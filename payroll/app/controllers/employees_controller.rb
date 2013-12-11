class EmployeesController < ApplicationController
  def index
    @employee_list = Company.new.get_employees
  end
end
