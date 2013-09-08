Rails.application.config.middleware.use OmniAuth::Builder do
  # The following is for facebook
  provider :facebook, "386574144802137", "0a7bb25ce4ceb8f36a41c723b0337044", {:scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'}
  provider :twitter, 'clRiVGhHYkNHlBccsZIVWQ', 'QBgZTRvHjl3Rpnfmp5Vsyg92QBx8fbmxgyI7QXG2wU', '135104770-7PNS7s33LakWmAxmQrLi2GUy9fvS39U4ctsRtWJn', 'OtPIlOiw7SIoSOjYbq3SUdVZXdUBbb5d3tFew8Eo', {:scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'}
 
  # If you want to also configure for additional login services, they would be configured here.
end