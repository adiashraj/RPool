package com.niit.rpms.service;

import java.util.List;

import com.niit.rpms.model.Employee;


public interface EmployeeService 
{
	public  int insertEmployee(Employee employee);

	public List<Employee> showEmployee(Employee employee);
}
