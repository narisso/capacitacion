class BoardsController < ApplicationController

	def show
		@boards = Board.all
	end

	def index
		@boards = Board.all
	end



	def new
	end

	def create
		@board = Board.new(paramas[:title])
		@board.save
	end

	private
		def board_params
			params.require(:board).permit(:title, :text)
		end

end
