module Store
  class Order < ActiveRecord::Base
    belongs_to :product
  end
end
