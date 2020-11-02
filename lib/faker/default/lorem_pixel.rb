# frozen_string_literal: true

module Faker
  class LoremPixel < Base
    class << self
      extend Gem::Deprecate

      ##
      # Produces a random image URL from lorempixel.com.
      #
      # @param size [String] Specifies the size of image to generate.
      # @param is_gray [Boolean] Determines if the image is gray.
      # @param category [Symbol] Adds the category of the generated image to the URL.
      # @param number [Integer] Adds a number as part of the URL.
      # @param text [Integer] Adds dummy text as part of the URL.
      # @param secure [Boolean] Changes the image URL between http and https.
      # @return [String]
      #
      # @example
      #   Faker::LoremPixel.image #=> "https://lorempixel.com/300/300"
      #   Faker::LoremPixel.image(size: "50x60") #=> "https://lorempixel.com/50/60"
      #   Faker::LoremPixel.image(size: "50x60", is_gray: true) #=> "https://lorempixel.com/g/50/60"
      #   Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports') #=> "https://lorempixel.com/50/60/sports"
      #   Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports', number: 3) #=> "https://lorempixel.com/50/60/sports/3"
      #   Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports', number: 3, text: 'Dummy-text') #=> "https://lorempixel.com/50/60/sports/3/Dummy-text"
      #   Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports', number: nil, text: 'Dummy-text') #=> "https://lorempixel.com/50/60/sports/Dummy-text"
      #   Faker::LoremPixel.image(secure: false) #=> "http://lorempixel.com/300/300"
      #
      # @faker.version 1.7.0
      # rubocop:disable Metrics/ParameterLists
      def image(legacy_size = NOT_GIVEN, legacy_is_gray = NOT_GIVEN, legacy_category = NOT_GIVEN, legacy_number = NOT_GIVEN, legacy_text = NOT_GIVEN, legacy_secure = NOT_GIVEN, size: '300x300', is_gray: false, category: nil, number: nil, text: nil, secure: true)
        warn_for_deprecated_arguments do |keywords|
          keywords << :size if legacy_size != NOT_GIVEN
          keywords << :is_gray if legacy_is_gray != NOT_GIVEN
          keywords << :category if legacy_category != NOT_GIVEN
          keywords << :number if legacy_number != NOT_GIVEN
          keywords << :text if legacy_text != NOT_GIVEN
          keywords << :secure if legacy_secure != NOT_GIVEN
        end

        Faker::Image.lorem_pixel(size: size, is_gray: is_gray, category: category, number: number, text: text, secure: secure)
      end
      # rubocop:enable Metrics/ParameterLists

      deprecate :image, 'Faker::Image.lorem_pixel', 2020, 05
    end
  end
end
