class Book < ActiveRecord::Base
  has_many :occupancies
  has_many :shelves, :through=>:occupancies
end
