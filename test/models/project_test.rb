require 'test_helper'
require 'minitest'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name and max hours should be present" do
    project = Project.new
    assert_not project.save
  end
end
