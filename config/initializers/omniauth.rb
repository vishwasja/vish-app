Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :google_oauth2, '22748854920.apps.googleusercontent.com', 'UqxYhCR-VRx9kzZaCbKp5z33'
  # The following is for facebook
  provider :facebook, "386574144802137", "0a7bb25ce4ceb8f36a41c723b0337044", {:scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'}
  provider :twitter, 'clRiVGhHYkNHlBccsZIVWQ', 'QBgZTRvHjl3Rpnfmp5Vsyg92QBx8fbmxgyI7QXG2wU', {:scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'}
 
  # If you want to also configure for additional login services, they would be configured here.
end