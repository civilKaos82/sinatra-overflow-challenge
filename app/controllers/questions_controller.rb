get '/question' do
  @questions = Question.all
  erb :'index'
end

get '/question/new' do
  erb :'/question/new'
end

post '/question' do
end

get '/question/:id' do
  @question = Question.find(params[:id])
  @answers_to_question = @question.answers
  erb :'/question/show'
end


