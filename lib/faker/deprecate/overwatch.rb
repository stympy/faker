# frozen_string_literal: true

module Faker
  module Overwatch
    class << self
      extend Gem::Deprecate

      def hero
        Faker::Games::Overwatch.hero
      end

      def location
        Faker::Games::Overwatch.location
      end

      def quote
        Faker::Games::Overwatch.quote
      end

      deprecate :hero, 'Faker::Games::Overwatch.hero', 2019, 0o1
      deprecate :location, 'Faker::Games::Overwatch.location', 2019, 0o1
      deprecate :quote, 'Faker::Games::Overwatch.quote', 2019, 0o1
    end
  end
end
