get '/question' do
  erb :'index'
end

get '/question/new' do
  erb :'/question/new'
end

post '/question' do
end

get '/question/:id' do
  erb :'/question/show'
end


