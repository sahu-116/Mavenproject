package com.projects.MavenProjects.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImp implements EmployeeService {
    private static final Object Employee = null;
    private EmployeeRepository employeerepository;

    @Autowired
    public EmployeeServiceImp(EmployeeRepository employeeRepository) {
        this.employeerepository = employeerepository;

    }

    @Override
    public Employee saveEmp(Employee emp) {
        return employeerepository.save(emp);
    }

    @Override
    public Employee update(Employee employee, Long id) {
        employee.setId(id);
        employeerepository.save(employee);
        return employee;
    }

    @Override
    public void delete(Long id) {
        employeerepository.deleteById(id);
    }

}
