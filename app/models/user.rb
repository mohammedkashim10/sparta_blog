class User < ApplicationRecord
  has_many :blogs
  validates :first_name, :presence => true
  validates :first_name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/ }
  validates :last_name, :presence => true
  validates :last_name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/ }
end
