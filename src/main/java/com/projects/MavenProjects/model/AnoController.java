package com.projects.MavenProjects.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AnoController {
    private EmployeeService employeeservice;

    @Autowired
    public AnoController(EmployeeService employeeservice) {
        this.employeeservice = employeeservice;

    }

    @PostMapping("/api/employee")
    public ResponseEntity<Employee> saveEmployeeDetails(@RequestBody Employee emp) {
        return new ResponseEntity<Employee>(employeeservice.saveEmp(emp),HttpStatus.CREATED);
    }

    @DeleteMapping("/api/{id}")
    public ResponseEntity<String> delete(@PathVariable("id") long id) {
        employeeservice.delete(id);
        return new ResponseEntity<String>("employee having" + id + "delete successfully", HttpStatus.NOT_FOUND);
    }

    @PutMapping("/api/{id}")
    public ResponseEntity<String> update(@RequestBody Employee employee,@PathVariable("id")Long id) {
        employeeservice.update(employee,id);
        return new ResponseEntity<String>("update successfully",HttpStatus.NOT_FOUND);
    }
}
