class ContactMailer < ApplicationMailer
def contact_mail(twiclo,email)
 @twiclo = twiclo
 mail to: email, subject: "ツイート確認メール"
end
end
