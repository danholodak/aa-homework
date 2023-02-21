class UserMailer < ApplicationMailer

    def welcome_email(user)
        @user = user
        @url = "http://localhost:3000/"
        mail(to: user.username, subject: "Welcome to the catzone" )
    end
end
