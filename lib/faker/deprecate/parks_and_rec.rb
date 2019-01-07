# frozen_string_literal: true

module Faker
  class ParksAndRec < Base
    class << self
      extend Gem::Deprecate

      def character
        Faker::TvShows::ParksAndRec.character
      end

      def city
        Faker::TvShows::ParksAndRec.city
      end

      deprecate :character, 'Faker::TvShows::ParksAndRec.character', 2019, 0o1
      deprecate :city, 'Faker::TvShows::ParksAndRec.city', 2019, 0o1
    end
  end
end
