module ProductManager
  class Product < ActiveRecord::Base
    has_many :orders,
              :class_name => 'Store::Order',
              :dependent => :destroy

    validates :name,  :presence => true
    validates :price, :presence => true
  end
end
