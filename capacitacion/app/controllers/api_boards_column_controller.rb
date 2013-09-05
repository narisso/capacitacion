class ApiBoardsColumnController < ApplicationController
	def getBoards
		token = params[:token]
		us = User.find_by_token(token)
		if us
			@bo = us.boards.to_json(:include => :columns)
			render :json => @bo
		else
			render :json => {:error => "Error: There's no user with given token."}
		end
	end
end