module Mjml
  module Rails
    class Railtie < ::Rails::Railtie
      config.app_generators.template_engine :mjml

      initializer 'mjml.register_template_handler' do |app|
        ActiveSupport.on_load(:action_view) do
          ActionView::Template.register_template_handler(:mjml, Mjml::Rails::TemplateHandler)
        end
      end
    end
  end
end
