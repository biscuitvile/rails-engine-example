module Store
  class Order < ActiveRecord::Base
    belongs_to :product, :class_name => "ProductManager::Product"
    belongs_to :user

    validates :product,  :presence => true
    validates :quantity, :presence => true
    validates :user,     :presence => true
  end
end
