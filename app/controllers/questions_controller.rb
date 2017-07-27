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
  # create array of all answers that correspond to question  -> AR association of question.answers
  erb :'/question/show'
end


