module Faker
  class Music < Base
    class << self
      def key
        keys.sample + key_variants.sample(random: Faker::Config.random)
      end

      def chord
        key + chord_types.sample(random: Faker::Config.random)
      end

      def instrument
        fetch('music.instruments')
      end

      def keys
        ['C', 'D', 'E', 'F', 'G', 'A', 'B']
      end

      def key_variants
        ['b', '#', '']
      end

      def key_types
        ['', 'm']
      end

      def chord_types
        ['', 'maj', '6', 'maj7', 'm', 'm7', '-7', '7', 'dom7', 'dim', 'dim7', 'm7b5']
      end
    end
  end
end
