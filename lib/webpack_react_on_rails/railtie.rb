module WebpackReactOnRails
  class Railtie < Rails::Railtie
    initializer "webpack_react_on_rails.configure_view_controller" do |app|
      ActiveSupport.on_load :action_view do
        include WebpackHelpers
      end
    end

    rake_tasks do
      load 'tasks/webpack/compile.rake'
    end
  end
end
