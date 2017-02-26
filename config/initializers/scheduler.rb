require 'rufus-scheduler'

# Let's use the rufus-scheduler singleton
#
s = Rufus::Scheduler.singleton


# Stupid recurrent task...
#
s.every '24h' , :first_at => "#{Date.today} 19:05:00 +0530" do

 @user = User.find_by(email: "sharbani.samanta@quantumcs.com")
  UserMailer.report_email(@user).deliver_now
end
