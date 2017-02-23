class ReportJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    @user = User.find_by(email: "sharma26sh@yahoo.in")
    UserMailer.report_email(@user).set(wait: 1.minutes).deliver_now
  end
end
