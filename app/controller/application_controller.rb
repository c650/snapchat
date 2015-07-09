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
		@all_snaps = Snap.all
		@all_users = User.all
		Snap.create(image_file: params[:image_file], caption: params[:caption], user_id: params[:user_id])
		redirect to '/'
	end

	get '/new_user' do

		@all_snaps = Snap.all
		@all_users = User.all
		erb :new_user
	end

	post '/new_user' do

		User.create(username: params[:username])
		@all_snaps = Snap.all
		@all_users = User.all

		redirect to "/"
	end

end