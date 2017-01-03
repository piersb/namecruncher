class WritersController < ApplicationController

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
