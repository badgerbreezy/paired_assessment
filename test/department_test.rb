require 'minitest/autorun'
require 'minitest/pride'
require 'Pry'
require './lib/employee'
require './lib/department'

class DepartmentTest < Minitest::Test
  def test_it_exists
    Department.new("Customer Service")

    assert_instance_of Department, department
  end

  def test_it_has_attributes
    Department.new("Customer Service")

    assert_equal "Customer Service, customer_service.name
    assert_equal [], customer_service.employees
  end
end
