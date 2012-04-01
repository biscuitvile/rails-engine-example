module Store
  class Order < ActiveRecord::Base
    belongs_to :product, :class_name => "ProductManager::Product"
    belongs_to :user
  end
end
