class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
        from: "#{@inquiry.email}",
        to:   '534zacca@gmail.com',
        subject: "#{@inquiry.subject}"
    )
  end

end
