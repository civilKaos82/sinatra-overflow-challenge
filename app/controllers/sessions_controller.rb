before '/' do
  unless current_user
    redirect '/login'
  end
end

get '/login' do
  erb :'session/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect '/'
  else
    @errors = ["You did not log in. Do better."]
    erb :'session/login'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/login'
end

get '/register' do
  erb :'session/register'
end

post '/register' do
  user = User.new(name: params[:name], email: params[:email], password: params[:password])
  user.save!
  login(user)
  redirect '/'
end

