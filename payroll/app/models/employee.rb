require 'csv'
class Employee
  attr_reader :last_name, :first_name, :base_pay, :tax
  attr_accessor :gross_pay, :net_pay, :updated_employee, :commission_earned
  def initialize(attributes)
    attributes = default.merge(attributes)
    @last_name = attributes['last_name']
    @first_name = attributes['first_name']
    @base_pay = attributes['base_pay'].to_i
    @gross_pay = attributes['gross_pay']
    @net_pay = attributes['net_pay']
    @updated_employee = attributes
  end

  def tax
    @tax.to_f
  end

  def calculate_tax
    gross_pay * tax
  end

  def gross_pay
    @gross_pay += (@base_pay / 12)
  end

  def net_pay
    @net_pay += (gross_pay - calculate_tax)
  end

  def display
    updated_employee['gross_pay'] = gross_pay
    updated_employee['net_pay'] = net_pay
    updated_employee
  end

  def default
    {'gross_pay' => 0, 'net_pay' => 0, 'tax' => 0.3}
  end
end
