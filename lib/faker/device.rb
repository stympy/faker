module Faker
  class Device < Base
    class << self
      def model_name
        fetch('device.model_name')
      end

      def platform
        fetch('device.platform')
      end

      def version
        Faker::Number.between(1, 5)
      end

      def build_number
        Faker::Number.between(1, 5)
      end

      def manufacturer
        fetch('device.manufacturer')
      end
    end
  end
end
