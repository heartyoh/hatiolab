class ContactMailer < ActionMailer::Base
  default from: "heartyoh@hatiolab.com", to: "heartyoh@hatiolab.com"

  def contact_email(contact)
    @contact = contact

    mail(subject: "Contact Notification : #{@contact[:name]} (#{@contact[:email]})")
  end

end
