# frozen_string_literal: true

require_relative 'test_helper'

class TestFakerHowIMetYourMother < Test::Unit::TestCase
  def setup
    @tester = Faker::TV::HowIMetYourMother
  end

  def test_character
    assert @tester.character.match(/\w+/)
  end

  def test_catch_phrase
    assert @tester.catch_phrase.match(/\w+/)
  end

  def test_high_five
    assert @tester.high_five.match(/\w+/)
  end

  def test_quote
    assert @tester.quote.match(/\w+/)
  end
end
