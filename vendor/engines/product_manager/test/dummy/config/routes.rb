Rails.application.routes.draw do

  mount ProductManager::Engine => "/product_manager"
end
