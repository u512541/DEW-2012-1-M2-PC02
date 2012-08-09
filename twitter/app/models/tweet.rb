class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'fWaMoTHJNsysivzICnPBUg'
      config.consumer_secret = 'UkCuPkebCuaBTekxwiy2t5SKR2df6FaYXjdjuVXiHww'
      config.oauth_token = '729645151-A4Qby0A7zjtlP1WZmdL8QHhSyFf8wC0xSZdRtIyg'
      config.oauth_token_secret = 'GPJtXmE3X9V8V4qNnvfXQoGNB7qeGLBNFfM7hBx7Q'
end    

  #def read_text
  def index
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end

end
