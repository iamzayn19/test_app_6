class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.hello.subject
  #
  default from: 'f180114@cfd.nu.edu.pk'

  def hello
    mail(
      subject: 'Hello from Postmark',
      to: 'f180114@cfd.nu.edu.pk',
      from: 'f180114@cfd.nu.edu.pk',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens: 'true',
      message_stream: 'broadcast')
  end
end
