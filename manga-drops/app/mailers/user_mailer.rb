class UserMailer < ApplicationMailer

  def new_manga_noti(user, manga)
    @user = user
    @manga = manga
    mail to: @user.email, subject: "A new chapter has dropped"
  end
end
