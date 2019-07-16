require('sinatra')
require('sinatra/reloader') if development?
require_relative('./models/rps.rb')
also_reload('./models/*')

get '/check-win/:hand1/:hand2' do
  hand1 = params[:hand1].to_s
  hand2 = params[:hand2].to_s
  @rsp = RPSGame.check_win(hand1, hand2)
  erb(:result)
end


get '/' do
  erb(:home)
end

get '/instructions' do
  erb(:instructions)
end

# get '/rock-wins' do
#   erb(:rock_wins)
# end
#
# get '/scissor-wins' do
#   erb(:scissor_wins)
# end
#
# get '/paper-wins' do
#   erb(:paper_wins)
# end
