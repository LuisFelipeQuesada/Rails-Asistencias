ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => '',
  :user_name            => 'webaparef@gmail.com',
  :password             => '4p4r3fw3b',
  :authentication       => 'plain',
  :enable_starttls_auto => true 
}

