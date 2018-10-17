# frozen_string_literal: true

module Faker
  module TV
    class Community < Base
      class << self
        def characters
          fetch('community.characters')
        end

        def quotes
          fetch('community.quotes')
        end
      end
    end
  end
end
