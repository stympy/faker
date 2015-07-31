require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerTeam < Test::Unit::TestCase

  def setup
    @tester = Faker::Team
  end

  def test_name
    assert @tester.name.match(/([[:alnum:]_]+\.? ?){2}/)
  end

  def test_sport
    assert @tester.sport.match(/(\w+\.?){1}/)
  end

end
