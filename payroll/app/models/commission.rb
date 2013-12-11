#require_relative 'sales'

class Commission < Employee
  def gross_pay
    super + commission
  end

  def commission
    commission = Sales.new.employee_sales
    if @last_name == "Lob"
      commission['Lob'] * 0.005
    else
      commission['Bobby'] * 0.015
    end
  end

  def display
    updated_employee['gross_pay'] = gross_pay
    updated_employee['net_pay'] = net_pay
    updated_employee
  end
end
