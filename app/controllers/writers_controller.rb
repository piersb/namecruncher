class WritersController < ApplicationController


	def index
		@writers = Writer.all
	end

	def show
		@writer = Writer.find(params[:id])
	end

	def new
	end

	def create

		@writer = Writer.new(writer_params)

		@writer.save
		redirect_to @writer

	end

	private

		def writer_params
			params.require(:writer).permit(:name)
		end
end
