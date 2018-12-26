require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should not save event without title" do
    event = Event.new
    assert_not event.save
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
  
  test "new event" do
    event = Event.new
    assert_not event.save
    event.title = 'My event'
    event.ev_date = '2018-12-12'
    event.level = 2
    event.place = 4
    event.id_head = '1'
    assert event.save
    assert_equal 'My event', event.title
    assert_not_equal 1, event.level
    assert_equal 4, event.place
    assert_not_equal '2018-12-12', event.ev_date
    assert_equal "1", event.id_head
    assert_not_equal 'My event', event.id_head
    assert event.destroy
  end
end
