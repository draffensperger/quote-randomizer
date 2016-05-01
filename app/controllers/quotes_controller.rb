class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create!(quote_params)
    redirect_to quotes_path
  end

  private

  def quote_params
    params.require(:quote).permit(:text, :author, :year)
  end
end
