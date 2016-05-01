class RandomCombinationsController < ApplicationController
  def show
    @text = RandomCombination.new(Quote.all).random_combo
  end
end
