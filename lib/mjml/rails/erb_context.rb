module Mjml
  module Rails
    class ERBContext

      # Permit ot get binding from hash
      #
      # @param hash [Hash]
      def initialize hash
        hash.each_pair do |key, value|
          instance_variable_set('@' + key.to_s, value)
        end
      end

      # Permit to get class binding object
      # @return [Binding]
      def get_binding
        binding
      end
    end
  end
end
