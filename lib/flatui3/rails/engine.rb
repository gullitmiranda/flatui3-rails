module Flatui3
  module Rails
    class Engine < ::Rails::Engine
      initializer 'flatui3.setup',
                  :after => 'less-rails.after.load_config_initializers',
                  :group => :all do |app|
        app.config.less.paths << File.join(config.root, 'app', 'assets')
      end
    end
  end
end
