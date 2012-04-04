module Store
  class Order < ActiveRecord::Base
    attr_accessible :product_id, :quantity

    belongs_to :product, :class_name => "ProductManager::Product"
    belongs_to :user

    validates :product,  :presence => true
    validates :quantity, :presence => true
    validates :user,     :presence => true
  end
end
