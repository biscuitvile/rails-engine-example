module Store
  class Order < ActiveRecord::Base
    belongs_to :product, :class_name => "ProductManager::Product"
  end
end
