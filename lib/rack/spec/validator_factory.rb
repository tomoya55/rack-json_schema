module Rack
  class Spec
    class ValidatorFactory
      def self.build(key, type, constraint)
        case type
        when "type"
          case constraint
          when "integer"
            Validators::IntegerValidator.new(key)
          end
        when "minimum"
          Validators::MinimumValidator.new(key, constraint)
        else
          NullValidator.new
        end
      end
    end
  end
end