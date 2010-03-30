class Shelf < ActiveRecord::Base
  belongs_to :user
  has_many :occupancies
  has_many :books, :through=>:occupancies
end
