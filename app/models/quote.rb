class Quote < ActiveRecord::Base
  def sentences
    text.split('.').map(&:strip)
  end
end
