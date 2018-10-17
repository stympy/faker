# frozen_string_literal: true

require_relative 'test_helper'

class TestFakerDrWho < Test::Unit::TestCase
  def setup
    Faker::Config.locale = nil
  end

  def test_character
    10.times { assert Faker::TV::DrWho.character.match(/[\w]+/) }
  end

  def test_the_doctor
    10.times { assert Faker::TV::DrWho.the_doctor.match(/[\w]+/) }
  end

  def test_actor
    10.times { assert Faker::TV::DrWho.actor.match(/[\w]+/) }
  end

  def test_catch_phrase
    10.times { assert Faker::TV::DrWho.catch_phrase.match(/[\w]+/) }
  end

  def test_quote
    10.times { assert Faker::TV::DrWho.quote.match(/[\w]+/) }
  end

  def test_villian
    10.times { assert Faker::TV::DrWho.villian.match(/[\w]+/) }
  end

  def test_specie
    10.times { assert Faker::TV::DrWho.specie.match(/[\w]+/) }
  end

  def test_locales
    [nil, 'en', 'de'].each do |_locale_name|
      Faker::Config.locale = 'de'
      assert Faker::TV::DrWho.character   .is_a? String
      assert Faker::TV::DrWho.the_doctor  .is_a? String
      assert Faker::TV::DrWho.catch_phrase.is_a? String
      assert Faker::TV::DrWho.quote       .is_a? String
      assert Faker::TV::DrWho.villian     .is_a? String
      assert Faker::TV::DrWho.specie      .is_a? String
    end
  end
end
