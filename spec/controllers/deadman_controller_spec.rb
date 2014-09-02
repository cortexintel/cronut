require "spec_helper"

describe DeadmanController do
  def valid_session
    {}
  end

  before(:each) do
    Timecop.freeze(Time.utc(2014, 9, 2, 4, 16))
    @job = CronJob.create!({
      :name => "Test ScheduledEmail",
      :cron_expression => "15 0 * * *",
      :buffer_time => 300
    })
  end

  after(:each) do
    @job.destroy
  end

  it "updates the relevant job's last successful time" do
    post :ping, to: "#{@job.public_id}@example.com"

    @job.reload
    @job.last_successful_time.should_not be_nil
  end

  it "handles job IDs that have been downcased in email addresses" do
    post :ping, to: "#{@job.public_id.downcase}@example.com"

    @job.reload
    @job.last_successful_time.should_not be_nil
  end

  it "responds with 200" do
    post :ping, to: "#{@job.public_id}@example.com"

    response.status.should eq(200)
  end

  it "ignores emails without an encrypted token in the body" do
    skip
  end

  it "ignores emails whose encrypted timestamp is more than one hour prior" do
    post :ping, to: "wrong@example.com"

    @job.reload
    @job.last_successful_time.should be_nil
  end

  it "responds with 'OK' to emails not sent to proper recipients" do
    post :ping, to: "wrong@example.com"

    response.status.should eq(200)
  end
end
