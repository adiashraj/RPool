package com.niit.rpms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.rpms.dao.EmployeeDAO;
import com.niit.rpms.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAO employeeDAO;
	
	public int insertEmployee(Employee employee) {
		return employeeDAO.insertEmployee(employee);
	}

	public List<Employee> showEmployee(Employee employee) {
		return employeeDAO.showEmployee(employee);
	}
}
