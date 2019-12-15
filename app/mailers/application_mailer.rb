class ApplicationMailer < ActionMailer::Base
  default to: I18n.t('mailer.mailto'), from: I18n.t('mailer.mailfrom')
  layout 'mailer'
end
