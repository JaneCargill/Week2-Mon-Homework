require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson < Minitest::Test

 def setup
  @person = Person.new('Jim', 37)
 end

  def test_person_has_name
    
    assert_equal('Jim', @person.name_of_person())
  end

  def test_person_has_age
    assert_equal(37, @person.age_of_person)
  end
end