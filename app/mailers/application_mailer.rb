class ApplicationMailer < ActionMailer::Base
  default to: "info@samsoc.com", from: 'info@samsoc.com'
  layout 'mailer'
end
