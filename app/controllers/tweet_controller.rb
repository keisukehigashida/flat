class TweetController < ApplicationController
	def index
		@lists = Table.all
	end
	
	def create
		@list = Table.new
		@list.from = params[:table][:from]
		@list.to = params[:table][:to]
		@list.num = params[:table][:num]
		@list.save
		redirect_to '/tweet/index'
	end

end