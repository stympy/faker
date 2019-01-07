# frozen_string_literal: true

module Faker
  class UmphreysMcgee < Base
    class << self
      extend Gem::Deprecate

      def song
        Faker::Music::UmphreysMcgee.song
      end

      deprecate :song, 'Faker::Music::UmphreysMcgee.song', 2019, 0o1
    end
  end
end
