class BoardsController < ApplicationController

	def show
		@boards = board.all
	end

	def index
		@boards = Board.all
	end


end
