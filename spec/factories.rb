Factory.define :user do |user|
  user.provider "twitter"
  user.uid "12345678"
  user.screen_name "testuser"
  user.name "Tom Tanaka"
end
