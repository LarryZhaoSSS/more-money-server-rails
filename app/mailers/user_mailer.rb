class UserMailer < ApplicationMailer
    def welcome_email(code)
      @code = code
      mail(to:'1658977155@qq.com',subject:'welcome to site')
    end
end
   