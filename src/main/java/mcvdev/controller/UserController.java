package mcvdev.controller;

import mcvdev.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import mcvdev.service.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/add_user")
    public String showform(Model m) {
        m.addAttribute("command", new User());
        return "add_user";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:/view_users";
    }

    @RequestMapping(value = "/view_users", method = RequestMethod.GET)
    public String viewemp(Model model) {
        model.addAttribute("userList", userService.getAll());
        return "view_users";
    }
}
