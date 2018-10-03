class User < ApplicationRecord
  has_many :blogs
  has_many :comments

  validates :first_name, :presence => true
  validates :first_name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => 'Please enter letters only' }

  validates :last_name, :presence => true
  validates :last_name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => 'Please enter letters only' }

  validates :confirm, :acceptance => true


  def full_name
    "#{first_name} #{last_name}"
  end
end
