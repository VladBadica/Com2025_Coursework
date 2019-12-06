class ApplicationMailer < ActionMailer::Base
  default to: "info@myjudo.com", from: "info@myjudo.com"
  layout 'mailer'
end
