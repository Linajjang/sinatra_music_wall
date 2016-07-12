# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
  @songs = Song.all
  erb :'songs/index'
end

post '/songs' do
  @song = Song.new(
    title: params[:title],
    author: params[:author]
  )
  @song.save
  redirect '/songs'
end

get '/songs/:id' do
  @song = Song.find params[:id]
  erb :'messages/show'
end