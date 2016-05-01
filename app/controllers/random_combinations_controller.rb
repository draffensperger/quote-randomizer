class RandomCombinationsController < ApplicationController
  def show
    @text = RandomCombiner.new.combine_two_quotes(cached_quotes)
  end

  private

  def cached_quotes
    Rails.cache.fetch('quotes', expires_in: 30.seconds) do
      Quote.all.to_a
    end
  end
end
