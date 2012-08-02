Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '164826433652959', '0e176326fbb677624548a54c5e7d08d1'
end