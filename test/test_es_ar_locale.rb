# frozen_string_literal: true

require_relative 'test_helper'

class TestEsArLocale < Test::Unit::TestCase
  def setup
    Faker::Config.locale = 'es-AR'
  end

  def teardown
    Faker::Config.locale = nil
  end

  def test_es_ar_name_methods
    assert Faker::Name.male_first_name.is_a? String
    assert Faker::Name.female_first_name.is_a? String
    assert Faker::Name.first_name.is_a? String
    assert Faker::Name.last_name.is_a? String
    assert Faker::Name.prefix.is_a? String
    assert Faker::Name.male_suffix.is_a? String
    assert Faker::Name.female_suffix.is_a? String
    assert Faker::Name.suffix.is_a? String
    assert Faker::Name.name.is_a? String
    assert Faker::Name.name_with_middle.is_a? String
  end

  def test_es_ar_address
    # city
    assert Faker::Address.city_prefix.is_a? String
    assert Faker::Address.army_city_prefix.is_a? String
    assert Faker::Address.male_city_saint_prefix.is_a? String
    assert Faker::Address.female_city_saint_prefix.is_a? String
    assert Faker::Address.city_suffix.is_a? String
    assert Faker::Address.city_names.is_a? String
    assert Faker::Address.city.is_a? String
    # state
    assert Faker::Address.state.is_a? String
    assert Faker::Address.state_abbr.is_a? String
    assert Faker::Address.state_abbr_iata.is_a? String
    assert_match(/[A-Z]{2,4}/, Faker::Address.state_abbr_iata)
    assert Faker::Address.city_with_state.is_a? String
    # address
    assert Faker::Address.building_number.is_a? String
    assert_match(/(S\/N|\d{2,5})/, Faker::Address.building_number)
    assert Faker::Address.secondary_address.is_a? String
    assert_match(/(PB|PA|(Piso|UF N°)\s\d{1,2}|(Departamento|Depto.|Lote)\s\d{1,2}[A-Z]|Manzana\s[A-Z]\d)/, Faker::Address.secondary_address)
    assert Faker::Address.street.is_a? String
    assert Faker::Address.street_prefix.is_a? String
    assert Faker::Address.street_suffix.is_a? String
    assert Faker::Address.street_name.is_a? String
    assert Faker::Address.road_prefix.is_a? String
    assert Faker::Address.road_suffix.is_a? String
    assert Faker::Address.road_name.is_a? String
    assert Faker::Address.street_address.is_a? String
    assert Faker::Address.postcode.is_a? String
    assert_match(/(\d{4}|[A-Z]\d{4}[A-Z]{3})/, Faker::Address.postcode)
    assert Faker::Address.postcode(state_abbreviation: 'BA').match(/(B\d{4}[A-Z]{3})/)
    assert Faker::Address.full_address.is_a? String
    # country
    assert Faker::Address.country.is_a? String
    assert Faker::Address.country_by_code(code: 'NL').match('Holanda')
    assert Faker::Address.country_name_to_code(name: 'estados_unidos').match('US')
    assert Faker::Address.default_country, 'Argentina'
  end

  def test_es_ar_football
    assert Faker::Sports::Football.team.is_a? String
    assert Faker::Sports::Football.player.is_a? String
    assert Faker::Sports::Football.coach.is_a? String
    assert Faker::Sports::Football.competition.is_a? String
    assert Faker::Sports::Football.position.is_a? String
  end

  def test_es_ar_basketball
    assert Faker::Sports::Basketball.team.is_a? String
    assert Faker::Sports::Basketball.player.is_a? String
    assert Faker::Sports::Basketball.coach.is_a? String
    assert Faker::Sports::Basketball.position.is_a? String
  end
  
  def test_es_ar_military
    assert Faker::Military.army_rank.is_a? String
    assert Faker::Military.marines_rank.is_a? String
    assert Faker::Military.navy_rank.is_a? String
    assert Faker::Military.coast_guard_rank.is_a? String
    assert Faker::Military.air_force_rank.is_a? String
    assert Faker::Military.space_force_rank.is_a? String
  end

  def test_es_ar_compass
    assert Faker::Compass.cardinal.is_a? String
    assert Faker::Compass.ordinal.is_a? String
    assert Faker::Compass.half_wind.is_a? String
    assert Faker::Compass.quarter_wind.is_a? String
    assert Faker::Compass.direction.is_a? String
    assert Faker::Compass.abbreviation.is_a? String
    assert Faker::Compass.azimuth.is_a? String
    assert Faker::Compass.cardinal_abbreviation.is_a? String
    assert Faker::Compass.ordinal_abbreviation.is_a? String
    assert Faker::Compass.half_wind_abbreviation.is_a? String
    assert Faker::Compass.quarter_wind_abbreviation.is_a? String
    assert Faker::Compass.cardinal_azimuth.is_a? String
    assert Faker::Compass.ordinal_azimuth.is_a? String
    assert Faker::Compass.half_wind_azimuth.is_a? String
    assert Faker::Compass.quarter_wind_azimuth.is_a? String
  end
end
