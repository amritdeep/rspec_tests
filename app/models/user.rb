class User < ActiveRecord::Base
  attr_accessible :email, :name

  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }

end
