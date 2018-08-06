class ContactMailer < ApplicationMailer
def contact_mail(twiclo)
 @twiclo = twiclo
 @user = User.find_by(id: @twiclo.user_id)
 mail to: "@user.email", subject: "ツイート確認メール"
end
end
