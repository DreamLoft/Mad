require 'rufus-scheduler'

# Let's use the rufus-scheduler singleton
#
s = Rufus::Scheduler.singleton


# Stupid recurrent task...
#
s.every '24h' , :first_at => "#{Date.today} 19:05:00 +0530" do

  @users= User.select{|u| u.isadmin== true}
  @users.each do |user|
    UserMailer.report_email(user).deliver_now
  #UserMailer.report_email(user).set(wait: 1.minutes).deliver_now
  end
 #@user = User.find_by(email: "sharbani.samanta@quantumcs.com")
  #UserMailer.report_email(@user).deliver_now
end
