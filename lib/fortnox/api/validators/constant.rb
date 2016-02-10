module Fortnox
  module API
    module Validator
      module Constant

        def validate( _instance )
          true
        end

        def violations
          Set.new
        end

        def instance
          self
        end
      end
    end
  end
end
