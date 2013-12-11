#require_relative 'sales'

class Commission < Employee
  def gross_pay
    super + commission
  end

  def commission
    commission_list = Sales.new.display
    if @last_name == "Lob"
      updated_employee['commission_earned'] = commission_list['Lob'] * 0.005
    updated_employee['sales'] = commission_list['Lob']
    else
      updated_employee['commission_earned'] = commission_list['Bobby'] * 0.015
    updated_employee['sales'] = commission_list['Bobby']
    end
  end

  def display
    updated_employee['gross_pay'] = gross_pay
    updated_employee['net_pay'] = net_pay
    updated_employee
  end
end
