class SalesController < ApplicationController
  def index
    @sales = Company.new.get_employees
  end
end
