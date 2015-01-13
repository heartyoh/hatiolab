class ContactMailer < ActionMailer::Base
  default from: "admin@hatiolab.com", to: "admin@hatiolab.com"

  def contact_email(contact)
    @contact = contact

    mail(subject: "Contact Notification : #{@contact[:name]} (#{@contact[:email]})")
  end

end
