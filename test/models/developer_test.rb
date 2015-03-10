require 'test_helper'
require 'minitest'
class DeveloperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

 test "email, name and password should be present on create" do
   developer = Developer.new
   assert_not developer.save
 end

 test "email addresses should be unique" do
   duplicate_developer = Developer.new
   assert_not duplicate_developer.valid?
 end
end
