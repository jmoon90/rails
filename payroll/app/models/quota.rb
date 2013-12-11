class Quota < Employee
  def gross_pay
    super + commission / 12
  end

  def commission
    comm = Sales.new.employee_sales
    if @last_name == "Wiggum"
      comm['Wiggum'] > 80000 ? @value = 10000 : @value = 0
    else
      @value = 5000 if comm['Groundskeeper'] > 60000
    end
    @value
  end

  def display
    updated_employee['gross_pay'] = gross_pay
    updated_employee['net_pay'] = net_pay
    updated_employee
  end
end


