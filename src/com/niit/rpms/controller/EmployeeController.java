package com.niit.rpms.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.niit.rpms.model.Employee;
import com.niit.rpms.model.Search;
import com.niit.rpms.service.EmployeeService;

/**
 * @author Sujit.1.Kumar
 *
 */
@Controller
@SessionAttributes
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public ModelAndView addEmployee(
			@ModelAttribute("employee") Employee employee, BindingResult result) {

		/*Employee emp = new Employee();
		emp.setEmpId(6650);
		emp.setEmpName("Sujit Kr");
		emp.setEmpRole("DEV");
		emp.setPrimarySkill("Mainframe");
		emp.setLocation("JV");
		emp.setPractise("H");
		emp.setMainSkill("DD");
		emp.setSecondarySkill("AJAJ");
		emp.setExperince(9);
		emp.setPsa("psa");
		emp.setOverseas("No");
		emp.setReleaseDate(new Date());
		emp.setContact(1234523456);
		emp.setLastProject("VA");
		emp.setInternalAssignment("VX");
		emp.setVertical("ROUS");
		emp.setPersonalDetail("ALL");
		emp.setTraining("Y");
		emp.setRemarks("PASS");
		emp.setLeaveStatus("NO");
		emp.setStatus("NO");
		emp.setLocationOfResidence("NOIDA");
		emp.setPassportStatus("AAA");
		emp.setOverallRating("FIVE");
		emp.setDateOfJoining(new Date());
		emp.setVisa("HI");
		emp.setBand(5);
		emp.setPlan("AAA");
		emp.setRole("TECH");
		emp.setDesignation("DEV");
		emp.setEmail("DUMMY");
		emp.setSsa(1);
		emp.setGender("M");
		emp.setLevel("M");
		emp.setNoOfOpportunity(1);*/

		employeeService.insertEmployee(employee);
		System.out.println("Inserted Employee");
		/*ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:success");
        modelAndView.addObject("employee",emp);
        return modelAndView;*/
	//	redir.addFlashAttribute("employee", emp);
		return new ModelAndView("success","employee", employee);
	//	return new ModelAndView(new RedirectView("redirect:/success?employee=" + emp));
	//	return "redirect:success";
	}
	
	@RequestMapping("/success")
	public ModelAndView showEmployee(@RequestParam Employee employee) {
		return new ModelAndView("success", "employee", employee);
	}
	
	@RequestMapping("/employee")
	public ModelAndView showEmployee() {
		return new ModelAndView("employee", "command", new Employee());
	}

	@RequestMapping("/search")
	public ModelAndView searchForm() {
		return new ModelAndView("search", "command", new Search());
	}

	@RequestMapping(value = "/searchemployee", method = RequestMethod.POST)
	public ModelAndView searchemployee(
			@ModelAttribute("searchaction") Employee employee,
			BindingResult result) {

		List<Employee> emplList = employeeService.showEmployee(employee);
		return new ModelAndView("searchResults", "emplList", emplList);
	}

}
