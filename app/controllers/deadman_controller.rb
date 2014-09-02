class DeadmanController < ApplicationController
  skip_before_filter :basic_auth
  skip_before_filter :filter_for_ip_whitelist

  def ping
    @job = CronJob.find_by_public_id(public_id) || NullJob.new
    @job.ping!

    head :ok
  end

  private

  def public_id
    params["to"].split("@").first.upcase
  end

  class NullJob
    def ping!
      # noop
    end
  end
end
