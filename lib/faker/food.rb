module Faker
  class Food < Base
    class << self

      # Retrieves a typical dish from each country
      def dish
        fetch('food.dish')
      end

      # Retrieves a description about some dish
      def description
        fetch('food.descriptions')
      end

      # Retrieves a ingredient for dishes
      def ingredient
        fetch('food.ingredients')
      end

      # Retrieves some random spice
      def spice
        fetch('food.spices')
      end

      # Retrieves cooking measures
      def measurement
        fetch('food.measurement_sizes') + ' ' + fetch('food.measurements')
      end

      # Retrieves metric measures
      def metric_measurement
        fetch('food.metric_measurements')
      end
    end
  end
end
