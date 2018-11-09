class InquiryMailerPreview < ActionMailer::Preview
  def inquiry
    inquiry = Inquiry.new(name: "hogehoge", message: "問い合わせメッセージ", email: "hogehoge@example.com", subject:"お問い合わせの件について")

    InquiryMailer.send_mail(inquiry)
  end
end