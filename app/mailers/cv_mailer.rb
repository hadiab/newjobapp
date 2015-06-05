class CvMailer < ActionMailer::Base


  def send_cv(user)
    mail(to: 'hipro4d@gmail.com', from: user.email, subject: 'Send Cv Email', body: 'This is your first email')
  end
end
