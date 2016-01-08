require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/typed_phrase') do
  @final_phrase = params.fetch('typed_phrase').word_puzzle()
  erb(:phrase_page)
end
