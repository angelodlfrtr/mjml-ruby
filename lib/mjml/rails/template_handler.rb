require "erb"
require "ostruct"

module Mjml
  module Rails
    class TemplateHandler

      def self.call(template)
        "Mjml::Rails::TemplateHandler.new(self).render(#{template.source.inspect}, local_assigns)"
      end

      def initialize(view)
        @view       = view
        @controller = view.controller
        @helper     = ActionController::Base.helpers
      end

      # Render mjml template
      #
      # @param template [String]
      # @param local_assigns [Hash]
      def render(template, local_assigns={})
        b          = ERBContext.new(@view.assigns).get_binding
        erb_parsed = ERB.new(template).result(b)
        Mjml::Parser.new(erb_parsed).render.html_safe
      end

      # Tell to rails if template engine is compilable
      #
      # @return [Boolean] false
      def compilable?
        false
      end
    end
  end
end
