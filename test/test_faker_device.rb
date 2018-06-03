require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerDevice < Test::Unit::TestCase
  def setup
    @tester = Faker::Device
  end

  def test_model_name
    assert @tester.model_name.match(/\w+\.?/)
  end

  def test_platform
    assert @tester.platform.match(/\w+\.?/)
  end

  def test_version
    assert @tester.version.is_a? Integer
  end

  def test_build_number
    assert @tester.build_number.is_a? Integer
  end

  def test_manufacturer
    assert @tester.manufacturer.match(/\w+\.?/)
  end
end
