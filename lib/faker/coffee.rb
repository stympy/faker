module Faker
  class Coffee < Base
    flexible :coffee

    class << self
      def blend_name
        parse('coffee.blend_name')
      end

      def origin
        country = fetch('coffee.country')
        # search_country = country.downcase
        # search_country.split(' ').join('_') if search_country.split(' ').length > 1
        region = fetch("coffee.regions.#{search_format(country)}")
        "#{region}, #{country}"
      end

      def variety
        fetch('coffee.variety')
      end

      def notes
        parse('coffee.notes')
      end

      private

      def search_format(key)
        key.split.length > 1 ? key.split.join('_').downcase : key.downcase
      end
    end
  end
end
