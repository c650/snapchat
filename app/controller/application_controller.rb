require_relative "../../config/environment.rb"
require_relative "../models/snap.rb"
require_relative "../models/user.rb"
class ApplicationController < Sinatra::Base

	configure do
    	set :public_folder, 'public'
    	set :views, 'app/views'
    end

	get '/' do
		@all_snaps = Snap.all
		@all_users = User.all
		erb :index
	end

	post '/' do
		redirect to '/'
	end

	# get '/new_user' do

	# end

	# post '/new_user'
		
	# end

end