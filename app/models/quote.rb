class Quote < ActiveRecord::Base
  belongs_to :user

  def sentences
    text.split('.').map(&:strip)
  end

  def user_ip_address
    user.latest_ip_address
  end
end
