package com.projects.MavenProjects.model;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.*;

import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import jakarta.servlet.http.HttpSession;

@SpringBootApplication
@Controller

public class MavenProjectsApplication {
  @Autowired
  JdbcTemplate jdbc;

  @GetMapping("/index")
  public String index() {
    return "index";
  }

  @GetMapping("/header")
  public String header() {
    return "index";
  }

  @GetMapping("/footer")
  public String footer() {
    return "footer";
  }

  @GetMapping("/home1")
  public String home1() {
    return "home1";
  }

  @GetMapping("/about")
  public String about() {
    return "about";
  }

  @GetMapping("/faq")
  public String faq(Model model) {
    String sql = "select * from faq";
    List<Map<String, Object>> all_question = jdbc.queryForList(sql);
    model.addAttribute("all_question", all_question);
    return "faq";
  }

  @GetMapping("/admin_faq")
  public String admin_faq() {
    return "admin_faq";
  }

  @PostMapping("/save_faq")
  public String save_faq(@RequestParam("question") String question, @RequestParam("answer") String answer,
      @RequestParam("submited_by") String submited_by, Model model) {

    jdbc.execute("Insert into faq (question,answer,submited_by) values ('" + question + "','" + answer + "','"
        + submited_by + "')");
    model.addAttribute("message", "Submit success...");

    return "admin_faq";

  }

  @GetMapping("/change_pwd")
  public String change_pwd() {
    return "change_pwd";
  }

  @PostMapping("/change_pwd")
  public String change_pwd(@RequestParam("email") String email, @RequestParam("cpassword") String cpassword,
      @RequestParam("newpassword") String newpassword, Model model, HttpSession session) {
    ArrayList<String> ali = new ArrayList<String>();
    List<String> li = jdbc.query("select * from user_master where password='" + cpassword + "'",
        new RowMapper<String>() {
          public String mapRow(ResultSet rs, int rowNum) throws SQLException {
            ali.add(rs.getString(3));
            return "";
          }
        });
    String sql1 = "update user_master set password=? where email=?";
    jdbc.update(sql1, newpassword, email);

    model.addAttribute("message", "password change successfully");
    return "change_pwd";

  }

  @GetMapping("/contact")
  public String contact() {
    return "contact";
  }

  @PostMapping("/contact")
  public String contact_message(@RequestParam("name") String name, @RequestParam("email") String email,
      @RequestParam("phone") String phone, @RequestParam("message") String message, HttpSession session, Model model) {
    jdbc.execute("Insert into contact_master (name,email,phone,message) values ('" + name + "','" + email + "','"
        + phone + "','" + message + "')");
    model.addAttribute("message", "Send successfully...");
    return "contact";
  }

  @GetMapping("/users")
  public String users(@RequestParam("name") String name, HttpSession session, Model model) {
    String sql = "select * from user_master where name='" + name + "'";
    List<Map<String, Object>> user = jdbc.queryForList(sql);
    session.setAttribute("name", name);
    model.addAttribute("user", user);
    return "users";
  }

  @PostMapping("/manageusers")
  public String manageusers(@RequestParam("email") String email, @RequestParam("btn") String btn, Model model) {
    if (btn.equalsIgnoreCase("delete")) {
      String sql = "delete from user_master where email=?";
      jdbc.update(sql, email);
    }
    String sql = "select * from user_master where email='" + email + "'";
    List<Map<String, Object>> usermaster = jdbc.queryForList(sql);
    model.addAttribute("usermaster", usermaster);
    return "editusers";
  }

  @PostMapping("/updateusers")
  public String updateusers(@RequestParam("email") String email, @RequestParam("name") String name,
      @RequestParam("role") String role, Model model) {
    String sql1 = "update user_master set name=?,role=? where email=?";
    jdbc.update(sql1, name, role, email);
    String sql = "select * from user_master where email='" + email + "'";
    List<Map<String, Object>> usermaster = jdbc.queryForList(sql);
    model.addAttribute("usermaster", usermaster);
    return "users";
  }

  // login code

  @GetMapping("/login")
  public String login() {
    return "login";
  }

  @GetMapping("/login_check")
  public String login_check(@RequestParam("email") String email, @RequestParam("password") String password, Model model,
      HttpSession session) {
    ArrayList<String> ali = new ArrayList<String>();
    List<String> li = jdbc.query(
        "select * from user_master where email='" + email + "' and password='" + password + "'",
        new RowMapper<String>() {
          public String mapRow(ResultSet rs, int rowNum) throws SQLException {
            ali.add(rs.getString(2));
            ali.add(rs.getString(3));
            ali.add(rs.getString(5));
            ali.add(rs.getString(6));
            return "";
          }
        });
    if (ali.isEmpty()) {
      model.addAttribute("message", "Invalid Details!!!!!");
      return "login";
    } else {
      session.setAttribute("name", ali.get(0));

      session.setAttribute("email", ali.get(1));
      if ((ali.get(3)).equalsIgnoreCase("admin")) {
        return "admindashboard";
      } else if ((ali.get(3)).equalsIgnoreCase("student")) {
        return "studentdashboard";
      } else if ((ali.get(3)).equalsIgnoreCase("faculty")) {
        return "facultydashboard";
      } else {
        return "login";
      }
    }
  }

  // new user login code

  @GetMapping("/newuser")
  public String newuser() {
    return "newuser";
  }

  @PostMapping("/newuser")
  public String newuser(@RequestParam("name") String name, @RequestParam("email") String email,
      @RequestParam("password") String password, @RequestParam("mobile") String mobile,
      @RequestParam("role") String role, Model model, HttpSession session) {
    ArrayList<String> ali = new ArrayList<String>();
    List<String> li = jdbc.query("select name from user_master where name='" + name + "'",
        new RowMapper<String>() {
          public String mapRow(ResultSet rs, int rowNum) throws SQLException {
            ali.add(rs.getString(1));
            return "";
          }
        });
    if (ali.isEmpty()) {
      jdbc.execute("Insert into user_master (name,email,password,mobile,role) values ('" + name + "','" + email + "','"
          + password + "','" + mobile + "','" + role + "')");
      model.addAttribute("message", "Register success...");
      return "newuser";
    } else {
      model.addAttribute("message", "User name already exist...");
      return "newuser";
    }

  }

  // Admin stsrt

  @GetMapping("/admindashboard")
  public String admindashboard() {
    return "admindashboard";
  }

  @GetMapping("/suggestion")
  public String suggestion() {
    return "suggestion";
  }

  @GetMapping("/admin_user")

  public String admin_user(Model model) {
    String sql = "select * from user_master";
    List<Map<String, Object>> user = jdbc.queryForList(sql);
    model.addAttribute("user", user);
    return "admin_user";
  }

  @PostMapping("/admin_manage_user")
  public String admin_manage_users(@RequestParam("email") String email, @RequestParam("btn") String btn, Model model) {
    if (btn.equalsIgnoreCase("Delete")) {
      String sql = "delete from user_master where email=?";
      jdbc.update(sql, email);
      return admin_user(model);
    }
    String sql = "select * from user_master where email='" + email + "'";
    List<Map<String, Object>> user = jdbc.queryForList(sql);
    model.addAttribute("user", user);
    return "admin_edit_user";
  }

  @PostMapping("/admin_update_user")
  public String admin_update_users(@RequestParam("email") String email, @RequestParam("name") String name,
      @RequestParam("role") String role, Model model) {
    String sql1 = "update user_master set name=?,role=? where email=?";
    jdbc.update(sql1, name, role, email);
    String sql = "select * from user_master";
    List<Map<String, Object>> user = jdbc.queryForList(sql);
    model.addAttribute("user", user);
    return "admin_user";
  }

  // admin register

  @GetMapping("/admin_register_user")
  public String admin_register_user() {
    return "admin_register_user";

  }

  @PostMapping("/admin_register_user")
  public String admin_register_user(@RequestParam("name") String name, @RequestParam("email") String email,
      @RequestParam("password") String password, @RequestParam("mobile") String mobile,
      @RequestParam("role") String role, Model model, HttpSession session) {
    ArrayList<String> ali = new ArrayList<String>();
    List<String> li = jdbc.query("select name from user_master where name='" + name + "'",
        new RowMapper<String>() {
          public String mapRow(ResultSet rs, int rowNum) throws SQLException {
            ali.add(rs.getString(1));
            return "";
          }
        });
    if (ali.isEmpty()) {
      jdbc.execute("Insert into user_master (name,email,password,mobile,role) values ('" + name + "','" + email + "','"
          + password + "','" + mobile + "','" + role + "')");
      model.addAttribute("message", "Register success...");
      return "admin_register_user";
    } else {
      model.addAttribute("message", "User name already exist...");
      return "admin_register_user";
    }

  }

  @GetMapping("/show_contact")
  public String show_contact(HttpSession session, Model model) {
    String sql = "select * from contact_master";
    List<Map<String, Object>> user = jdbc.queryForList(sql);

    model.addAttribute("user", user);
    return "show_contact";
  }

  @PostMapping("/manage_contact")
  public String manage_contact(@RequestParam("email") String email, @RequestParam("btn") String btn, Model model) {
    if (btn.equalsIgnoreCase("delete")) {
      String sql = "delete from contact_master where email=?";
      jdbc.update(sql, email);
    }
    model.addAttribute("message", "Deleted success!!!!!");

    return "show_contact";
  }

  // faculty dashboard start
  @GetMapping("/facultydashboard")
  public String facultydashboard() {
    return "facultydashboard";
  }

  @GetMapping("/question")
  public String question() {
    return "question";
  }

  @PostMapping("/save_question")
  public String save_question(@RequestParam("subject") String subject, @RequestParam("question") String question,
      @RequestParam("option1") String option1, @RequestParam("option2") String option2,
      @RequestParam("option3") String option3, @RequestParam("option4") String option4,
      @RequestParam("answer") int answer, Model model) {

    jdbc.execute(
        "Insert into exam (subject,question,option1,option2,option3,option4,answer) values ('" + subject + "','"
            + question + "','" + option1 + "','" + option2 + "','" + option3 + "','" + option4 + "','" + answer + "')");
    model.addAttribute("message", "Submit success...");

    return "question";

  }

  @GetMapping("/faculty_user")

  public String faculty_user(Model model) {
    String sql = "select * from user_master where role='student'";
    List<Map<String, Object>> user = jdbc.queryForList(sql);
    model.addAttribute("user", user);
    return "faculty_user";
  }

  @PostMapping("/faculty_manage_user")
  public String faculty_manage_user(@RequestParam("email") String email, @RequestParam("btn") String btn, Model model) {
    if (btn.equalsIgnoreCase("Delete")) {
      String sql = "delete from user_master where email=?";
      jdbc.update(sql, email);
      return faculty_user(model);
    }
    String sql = "select * from user_master where email='" + email + "'";
    List<Map<String, Object>> user = jdbc.queryForList(sql);
    model.addAttribute("user", user);
    return "faculty_edit_user";
  }

  @PostMapping("/faculty_update_user")
  public String faculty_update_user(@RequestParam("email") String email, @RequestParam("name") String name,
      @RequestParam("role") String role, Model model) {
    String sql1 = "update user_master set name=?,role=? where email=?";
    jdbc.update(sql1, name, role, email);
    String sql = "select * from user_master where email='" + email + "'";
    List<Map<String, Object>> user = jdbc.queryForList(sql);
    model.addAttribute("user", user);
    return "faculty_user";
  }

  // faculty register

  @GetMapping("/faculty_register_user")
  public String faculty_register_user() {
    return "faculty_register_user";

  }

  @PostMapping("/faculty_register_user")
  public String faculty_register_user(@RequestParam("name") String name, @RequestParam("email") String email,
      @RequestParam("password") String password, @RequestParam("mobile") String mobile,
      @RequestParam("role") String role, Model model, HttpSession session) {
    ArrayList<String> ali = new ArrayList<String>();
    List<String> li = jdbc.query("select name from user_master where name='" + name + "'",
        new RowMapper<String>() {
          public String mapRow(ResultSet rs, int rowNum) throws SQLException {
            ali.add(rs.getString(1));
            return "";
          }
        });
    if (ali.isEmpty()) {
      jdbc.execute("Insert into user_master (name,email,password,mobile,role) values ('" + name + "','" + email + "','"
          + password + "','" + mobile + "','" + role + "')");
      model.addAttribute("message", "Register success...");
      return "faculty_register_user";
    } else {
      model.addAttribute("message", "User name already exist...");
      return "faculty_register_user";
    }

  }

  @GetMapping("/result")
  public String result(HttpSession session, Model model) {
    String email = (String) session.getAttribute("email");
    List<Map<String, Object>> total_mark = jdbc
        .queryForList("select student_mark from result_master where student_id='" + email + "'");
    model.addAttribute("total_mark", total_mark);
    return "result";
  }

  // faculty manage student profile

  // student dashboard code

  @GetMapping("/studentdashboard")
  public String studentdashboard() {
    return "studentdashboard";
  }

  @GetMapping("/sheader")
  public String sheader() {
    return "sheader";
  }

  @GetMapping("/profile")
  public String profile(HttpSession session, Model model) {
    String email = (String) session.getAttribute("email");
    ArrayList<String> ali = new ArrayList<String>();
    List<String> li = jdbc.query("select photo from profile where email='" + email + "'",
        new RowMapper<String>() {
          public String mapRow(ResultSet rs, int rowNum) throws SQLException {
            ali.add(rs.getString(1));
            return "";
          }
        });

    if (ali.isEmpty()) {
      return "uplode_profile";

    } else {
      String sql = "select photo from profile where email=?";
      // List<Map<String, Object>> profile = jdbc.queryForList(sql);
      // model.addAttribute("profile", profile);
      byte[] imageData = jdbc.queryForObject(sql, byte[].class, email);

      model.addAttribute("imageData", imageData);

      // String sql1 = "select age from profile where email=?";
      // List<Map<String, Object>> profile = jdbc.queryForList(sql1);
      // model.addAttribute("profile", profile);
      
      return "profile";
    }

  }

  @GetMapping("/uplode_profile")
  public String uplode_profile() {
    return "uplode_profile";
  }

  @PostMapping("/uplode_profile")
  public String uplode_profile(HttpSession session, Model model, @RequestParam("f") MultipartFile f,
      @RequestParam("number") String number) throws IOException {
    String email = (String) session.getAttribute("email");
  
    String sql = "insert into profile(email,photo,age) values(?,?,?)";
    jdbc.update(sql, email, f.getBytes(), number);
    model.addAttribute("message", "uplode successfully!!!!");

    return "profile";
    
  }

  @GetMapping("/edit_profile")
  public String edit_profile() {
    return "edit_profile";
  }

  @PostMapping("/edit_profile")
  public String edit_profile(HttpSession session, Model model,
      @RequestParam("f") MultipartFile f,
      @RequestParam("number") String number) throws IOException {
    String email = (String) session.getAttribute("email");

    // Convert MultipartFile to byte[]
    byte[] photoData = f.getBytes(); // This converts the file into a byte array

    // Prepare SQL statement with correct types
    String sql = "UPDATE profile SET photo = ?, age = ? WHERE email = ?";
    jdbc.update(sql, photoData, number, email); // Pass the byte array to the query

    // Fetch the updated profile from the database
    String sql1 = "SELECT * FROM profile WHERE email = ?";
    List<Map<String, Object>> profile = jdbc.queryForList(sql1, email); // Correctly pass the email as a parameter

    // Add the profile and success message to the model
    model.addAttribute("profile", profile);
    model.addAttribute("message", "Update successful!");

    return profile(session, model); // Return the profile page after update
  }

  @GetMapping("/exam")
  public String exam(Model model) {
    String sql = "select * from exam";
    List<Map<String, Object>> all_question = jdbc.queryForList(sql);
    model.addAttribute("all_question", all_question);
    return "exam";
  }

  @GetMapping("/save_student_answer")
  public String save_student_answer(@ModelAttribute ExamData ed, HttpSession session, Model model) {
    String email = (String) session.getAttribute("email");

    List<Map<String, Object>> stu_ans = jdbc.queryForList("select slno,answer from exam");
    String[] stu_ansArray = ed.getAnsArray();
    int total_mark = 0;
    for (Map<String, Object> rowMap : stu_ans) {
      int slno = Integer.parseInt(rowMap.get("slno").toString());
      int ans = (int) rowMap.get("answer");
      int stu_mark = Integer.parseInt(stu_ansArray[slno]);
      if (ans == stu_mark) {
        total_mark++;
      }
    }
    String json_text = ed.toString();
    String sql = "insert into add_answer(student_id,student_answer,student_mark)values (?,?,?)";
    jdbc.update(sql, email, json_text, total_mark);
    model.addAttribute("total_mark", total_mark);

    return "result";
  }

  // .............................................student doubt start
  // ........................................................................

  @GetMapping("/doubt")
  public String doubt() {
    return "doubt";
  }

  @PostMapping("/doubt")
  public String sdoubt(@RequestParam("doubt") String doubt, HttpSession session, Model model) {
    String semail = (String) session.getAttribute("email");
    String sname = (String) session.getAttribute("name");
    jdbc.execute("Insert into doubt(question,semail,sname) values ('" + doubt + "','" + semail + "','" + sname + "')");
    model.addAttribute("message", "Send successfully...");
    return "doubt";
  }

  @GetMapping("/doubt_status")
  public String doubt_status(Model model) {
    String sql = "select * from doubt";
    List<Map<String, Object>> all_question = jdbc.queryForList(sql);
    model.addAttribute("all_question", all_question);
    return "doubt_status";
  }

  @GetMapping("/stu_doubts")
  public String stu_doubts(Model model) {
    String sql = "select * from doubt where answer='" + 1 + "'";
    List<Map<String, Object>> all_question = jdbc.queryForList(sql);
    model.addAttribute("all_question", all_question);
    return "stu_doubts";
  }

  @PostMapping("/stu_doubts")
  public String studoubts(@RequestParam("slno") Integer slno, @RequestParam("answer") String answer,
      HttpSession session, Model model) {
    String femail = (String) session.getAttribute("email");
    String fname = (String) session.getAttribute("name");

    String sql1 = "update doubt set answer=?,femail=?,fname=? where slno='" + slno + "'";
    jdbc.update(sql1, answer, femail, fname);
    model.addAttribute("message", "Send successfully...");
    return "stu_doubts";
  }

  @GetMapping("/userhome")
  public String userhome() {
    return "userhome";
  }

  @RequestMapping("/home")
  public String home(Model model) {
    System.out.println("This is HOME url ");
    model.addAttribute("name", "Rahul");
    model.addAttribute("id", 147);
    List<String> friends = new ArrayList<String>();
    friends.add("Jitu");
    friends.add("Dhreeti");
    friends.add("Rehan");
    friends.add("Alex Roy");
    model.addAttribute("f", friends);
    return "home";
  }

  @RequestMapping("/help")
  public ModelAndView help() {
    System.out.println("This is help page");

    ModelAndView modelAndView = new ModelAndView();
    modelAndView.addObject("roll", 1234);
    modelAndView.addObject("name", "Rahul");
    LocalDateTime now = LocalDateTime.now();
    modelAndView.addObject("now", now);

    modelAndView.setViewName("help");
    return modelAndView;
  }

  public static void main(String[] args) {
    SpringApplication.run(MavenProjectsApplication.class, args);
  }
}
