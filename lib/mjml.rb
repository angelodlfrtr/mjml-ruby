require "mjml/version"

module Mjml

  autoload :Parser, 'mjml/parser'

  module Rails
    autoload :TemplateHandler, 'mjml/rails/template_handler'
    autoload :ERBContext, 'mjml/rails/erb_context'
  end
end

require "mjml/rails/railtie" if defined?(Rails)
