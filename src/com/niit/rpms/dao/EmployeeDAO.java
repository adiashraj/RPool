package com.niit.rpms.dao;

import java.util.List;

import com.niit.rpms.model.Employee;

public interface EmployeeDAO {
	
	public int insertEmployee(Employee e);

	public List<Employee> showEmployee(Employee employee);
}