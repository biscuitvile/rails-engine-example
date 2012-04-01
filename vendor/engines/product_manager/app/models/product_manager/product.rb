module ProductManager
  class Product < ActiveRecord::Base
    validates :name,  :presence => true
    validates :price, :presence => true
  end
end
