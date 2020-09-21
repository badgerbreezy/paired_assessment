require 'minitest/autorun'
require 'minitest/pride'
require 'Pry'
require './lib/employee'
require './lib/department'

class DepartmentTest < Minitest::Test
  def test_it_exists
    customer_service = Department.new("Customer Service")

    assert_instance_of Department, customer_service
  end

  def test_it_has_attributes
    customer_service = Department.new("Customer Service")

    assert_equal "Customer Service", customer_service.name
    assert_equal [], customer_service.employees
  end

  def test_it_can_hire
    customer_service = Department.new("Customer Service")
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})

    customer_service.hire(bobbi)
    customer_service.hire(aaron)

    assert_equal [bobbi. aaron], customer_service.employees
  end
end
