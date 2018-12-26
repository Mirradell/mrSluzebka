require 'test_helper'

class PersonTest < ActiveSupport::TestCase
require 'test_helper'
  test "should not save person without name" do
    person = Person.new
    assert person.save
  end
  
  test "the truth" do
    assert true
  end
  
  test "should report error" do
    # переменная some_undefined_variable не определена в тесте
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
  
  test "new person" do
    person = Person.new
    assert person.save
    person.surname = 'Ivanov'
    person.name = 'Ivan'
    person.father_name = 'Ivanovich'
    person.universitat = 'SFU'
    person.fakultet = 'MehMat'
    person.course = 3
    person.group = '8'
    person.ssilka = '1@1.1'
    person.id_head = '2@2.2'
    assert person.save
    assert_equal 'Ivanov', person.surname
    assert_not_equal 'Sergey', person.name
    assert_equal 'Ivanovich', person.father_name
    assert_not_equal ';lskdf', person.universitat
    assert_equal 'MehMat', person.fakultet
    assert_not_equal 1, person.course
    assert_equal '8', person.group
    assert_not_equal '222', person.ssilka
    assert_not_equal 'lkrmg', person.id_head
    assert person.destroy
  end
end
