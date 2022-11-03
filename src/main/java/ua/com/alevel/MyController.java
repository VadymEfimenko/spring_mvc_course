package ua.com.alevel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first_view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {

        model.addAttribute("employee", new Employee());
        return "ask_emp_details_view";
    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//
//        String empName = request.getParameter("employeeName");
//        empName = "Dear " + empName;
//        model.addAttribute("addedAttribute", empName);
//        return "show_emp_details_view";
//    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee employee, BindingResult result) {
        if (result.hasErrors()) {
            return "ask_emp_details_view";
        } else {
            return "show_emp_details_view";
        }
    }
}
