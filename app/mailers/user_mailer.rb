class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
   
  def inquiry_email(options={})
    @user = options[:name]
    @message = options[:message]
    @subject  = options[:subject]
    @email = options[:email]
    mail(to: "vbhavu1925@gmail.com", from: options[:email], subject: options[:subject], body: options[:message])
  end
end
