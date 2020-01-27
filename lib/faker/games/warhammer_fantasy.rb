# frozen_string_literal: true

module Faker
  class Games
    class WarhammerFantasy < Base
      class << self
        def hero
          fetch('games.warhammer_fantasy.heros')
        end

        def quote
          fetch('games.warhammer_fantasy.quotes')
        end

        def location
          fetch('games.warhammer_fantasy.locations')
        end

        def faction
          fetch('games.warhammer_fantasy.factions')
        end

        def creature
          fetch('games.warhammer_fantasy.creatures')
        end
      end
    end
  end
end
