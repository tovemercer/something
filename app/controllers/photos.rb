get "/photos" do
  erb :'photos/index'
end

# http request to instagram
get "/photos/:tag" do
  p params
  # tag = params[:]
  uri = URI("https://api.instagram.com/v1/tags/#{tag}/media/recent?access_token=ACCESS_TOKEN")
  @instagramString = Net::HTTP.get(uri)
  erb :'/photos/show'
end
