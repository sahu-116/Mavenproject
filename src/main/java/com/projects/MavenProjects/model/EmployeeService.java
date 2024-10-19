package com.projects.MavenProjects.model;

public interface EmployeeService {

    Employee saveEmp(Employee emp);

    Employee update(Employee employee, Long id);

    void delete(Long id);

}
