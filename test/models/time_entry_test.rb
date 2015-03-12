require 'test_helper'

class TimeEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'developer, project, duration & hours worked should be present' do
    time_entry = TimeEntry.new
    assert_not time_entry.save
  end
end
