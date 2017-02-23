class UserMailer < ApplicationMailer

  def report_email(user)
   @user = user
   @users= User.all
   @timesheets= Timesheet.select{|t| t.Tdate== Date.today}
   @leftuser= @users.reject{|u| @timesheets.map{|t| t.user_id }.include? u.id }
   mail(to: @user.email, subject: 'Timesheet Report')
 end
end
