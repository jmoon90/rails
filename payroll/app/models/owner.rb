class Owner < Employee
  def gross_pay
    (@base_pay / 12) + commission
  end

  def commission
    commission = Sales.new.employee_sales
    monthly_sales = commission.values.inject(:+)
    @bonus = monthly_sales > 250000 ? 1000 : 0
    @bonus
  end

  def display
    updated_employee['gross_pay'] = gross_pay
    updated_employee['net_pay'] = net_pay
    updated_employee
  end
end
