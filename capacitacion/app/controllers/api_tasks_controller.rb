class ApiTasksController < ApplicationController
	def getTasks

		token = params[:token]
		board = params[:board]
		column = params[:column]
		u = User.find_by_token(token)
		if u
			b = u.boards.find_by_id(board)
			if b
				c = b.columns.find_by_id(column)
				if c
					@t = c.tasks
					render :json => @t
				else
					render :json => {:error =>"Error Column"}
				end
			else
				render :json => {:error =>"Error Board"} 
			end
		else
			render :json => {:error =>"Error Token"} 
		end			
		return
	end
end
