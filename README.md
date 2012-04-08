# Using multiple mounted engines with Rails 3.2

**live demo:** http://rails-engine-example.herokuapp.com

This project demonstrates how mountable engines can be used together in a single app and how typical Rails model associations can extend across mounted engines. A use case for this strategy would be breaking up a large application into smaller, isolated engines.

## Key concepts demonstrated

* Standard Rails associations easily bridge across engine namespaces by specifying `class_name => 'EngineNamespace::EngineModel'` when declaring the association

* Engines can gain access to important methods in the host application like `current_user` by redefining the engine's application controller to inherit from the host's `ApplicationController` class instead of `ActionController::Base`

## In a nutshell

```
module YourAwesomeEngine
  # inherit from the host application controller
  class ApplicationController < ::ApplicationController
  end
end
```

```
module YourAwesomeEngine
  class YourEngineModel < ActiveRecord::Base
    belongs_to :other_engines_model, :class_name => "OtherEngine::OtherEnginesModel"
    belongs_to :host_application_model # no namespace here
  end
end
```

## Poking around

This example uses two engines that are bundled internally under `vendor/engines`, declared in the Gemfile like so:

```
gem 'product_manager', :path => 'vendor/engines/product_manager'
gem 'store', :path => 'vendor/engines/store'
```

These are the most pertinent files for examination:

```
rails-engine-example/Gemfile
rails-engine-example/config/routes.rb
rails-engine-example/vendor/engines/store/app/controllers/store/application_controller.rb
rails-engine-example/vendor/engines/store/app/models/store/order.rb
rails-engine-example/vendor/engines/product_manager/app/models/product_manager/product.rb
```
