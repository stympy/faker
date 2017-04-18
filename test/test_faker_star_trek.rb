require File.expand_path(File.dirname(__FILE__) + '/test_helper')

class TestFakerStarTrek < Test::Unit::TestCase
  def setup
    @tester = Faker::StarTrek
  end

  def test_champions
    assert @tester.character.match(/\w+/)
  end

  def test_locations
    assert @tester.location.match(/\w+/)
  end

  def test_species
    assert @tester.specie.match(/\w+/)
  end

  def test_villains
    assert @tester.villain.match(/\w+/)
  end
end