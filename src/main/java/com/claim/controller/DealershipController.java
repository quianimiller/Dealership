package com.claim.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Customer;
import com.claim.entity.Employee;
import com.claim.entity.Sales;
import com.claim.entity.Vehicle;
import com.claim.service.CustomerService;
import com.claim.service.EmployeeService;
import com.claim.service.SalesService;
import com.claim.service.VehicleService;

@Controller
public class DealershipController {

	@Autowired
	CustomerService customerservice;

	@Autowired
	VehicleService vehicleService;

	@Autowired
	SalesService salesService;

	@Autowired
	EmployeeService employeeservice;

	@GetMapping("/")
	public String welcome(Model model) {

		return "index";

	}

	@GetMapping("/login")
	public ModelAndView login(Model model) {
		return new ModelAndView("login", "customer", new Customer());
	}

	@PostMapping("/login")
	public String handleLogin(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {

		Customer loginCustomer = customerservice.loginCustomer(customer);

		if (loginCustomer == null) {
			model.addAttribute("error", "Invalid email or password. Please login again.");
			session.setAttribute("customer", new Customer());
			return "login";
		} else {
			session.setAttribute("loggedInCustomer", loginCustomer);
			return "home";
		}

	}
	
	@GetMapping("/employee-login")
	public ModelAndView loginEmployee(Model model) {
		return new ModelAndView("employee-login", "employee", new Employee());
	}
	
	@PostMapping("/employee-login")
	public String handleEmployeeLogin(Model model, @ModelAttribute("employee") Employee employee, HttpSession session) {
		Employee loginEmployee = employeeservice.loginEmployee(employee);

		if (loginEmployee == null) {
			model.addAttribute("error", "Invalid employee id or password. Please try again.");
			model.addAttribute("employee", new Employee());
			return "employee-login";
		} else {
			model.addAttribute("loggedInEmployee", loginEmployee);
			return "employee-home";
		}
	}
	
	

	@GetMapping("/sign-up-customer")
	public ModelAndView signUp(Model model) {
		return new ModelAndView("sign-up-customer", "customer", new Customer());
	}

	@PostMapping("/sign-up-customer")
	public String handleSignUp(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
		customerservice.saveCustomer(customer);
		model.addAttribute("newCustomer", customer);

		return "thank-you";
	}
	
	

	@GetMapping("/getAll")
	public String listAllVehicles(Model model) {
		List<Vehicle> unsold = vehicleService.sold();
		model.addAttribute("listUnsold", unsold);
		return "list";
		// List<Vehicle> allVehicles = vehicleService.listVehicles();
		// model.addAttribute("listOfVehicles", allVehicles);
	}
	
	@PostMapping("/getAll")
	public String listVehicles(Model model) {

		return "list";

	}
	
	@GetMapping("/new-vehicle")
	public ModelAndView addVehicle(Model model) {
		return new ModelAndView("new-vehicle", "vehicle", new Vehicle());
	}

	@GetMapping("/purchase")
	public ModelAndView purchase(Model model) {
		return new ModelAndView("purchase", "sales", new Sales());
	}
	
	@PostMapping("/purchase")
	public String handlePurchase(Model model, @ModelAttribute("sale") Sales sale, HttpSession session) {
		salesService.newSale(sale);
		return "confirmation-page";
	}
	
	@PostMapping("/new-vehicle")
	public String handleSignUp(Model model, @ModelAttribute("vehicle") Vehicle vehicle, HttpSession session) {
		vehicleService.newVehicle(vehicle);
		List<Vehicle> unsold = vehicleService.sold();
		model.addAttribute("listUnsold", unsold);

		return "list";
	}

	@GetMapping("/search")
	public String search(Model model) {

		return "search";

	}
	
	
	//puchase page will load 
	//return to confirmation page. 

	@PostMapping("/search")
	public String searchHandling(@ModelAttribute("keyword") String keyword, Model model) {

		List<Vehicle> resultVehicles = vehicleService.search(keyword);
		model.addAttribute("resultOfVehicles", resultVehicles);

		return "results";

	}

	@GetMapping("/details")
	public String vehicleDetail(Model model, @RequestParam int vinNumber) {
		model.addAttribute("vehicle", vehicleService.findByVin(vinNumber));

		return "details";

	}

	//Dont need because I am not sending data on details page. 
	//post mapping 
	@PostMapping("/details")
	public String specificVehicle(Model model) {

		return "details";

	}

	@GetMapping("/transactions")
	public String list(Model model) {
		List<Sales> allSales = salesService.listSales();
		model.addAttribute("listSales", allSales);
		return "transactions";
	}

	@GetMapping("/customer-transactions")
	public String listCustomerSale(Model model,  @RequestParam Integer customerId) {
		List<Sales> listSales = salesService.findByCustId(customerId);
		model.addAttribute("custSold",listSales);
		return "customer-transactions";
	}
	
	

}
