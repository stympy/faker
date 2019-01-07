# frozen_string_literal: true

module Faker
  class StrangerThings < Base
    class << self
      extend Gem::Deprecate

      def quote
        Faker::TvShows::StrangerThings.quote
      end

      def character
        Faker::TvShows::StrangerThings.character
      end

      deprecate :quote, 'Faker::TvShows::StrangerThings.quote', 2019, 0o1
      deprecate :character, 'Faker::TvShows::StrangerThings.character', 2019, 0o1
    end
  end
end
