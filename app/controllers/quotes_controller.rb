class QuotesController < ApplicationController
	def index
			@quote = Quote.order("RANDOM()").first
	end

	def new 
		@quote = Quote.new
	end

	def create 
		@quote = Quote.create(quote_params)
  	if @quote.invalid?
    	flash[:error] = "<strong>Error!</strong> Please make sure that you've completed the required fields. Your quote must be 250 characters or less, and the author should be 100 characters or less."
		end         
		redirect_to root_path
	end

	private

	def quote_params 
			params.require(:quote).permit(:saying, :author)
	end
end