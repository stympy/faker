# frozen_string_literal: true

module Faker
  class SouthPark < Base
    class << self
      extend Gem::Deprecate

      def character
        Faker::TvShows::SouthPark.character
      end

      def quote
        Faker::TvShows::SouthPark.quote
      end

      deprecate :character, 'Faker::TvShows::SouthPark.character', 2019, 0o1
      deprecate :quote, 'Faker::TvShows::SouthPark.quote', 2019, 0o1
    end
  end
end
