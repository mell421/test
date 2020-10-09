package fr.dsc.tp.pwatp2;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FirstController {

    @Inject
    public VegetableRepository vegetableRep;

    @RequestMapping("/simple")
    public String simple(Model m){
        m.addAttribute("hi", "hellowwww");
        return "simple";
    }

    @RequestMapping("/vegetable")
    public String vegetable(Model m) {
        m.addAttribute("veges", vegetableRep.findAll());
        m.addAttribute("veg", new Vegetable());
        return "veges";
    }
    @RequestMapping("/addvegetable")
    public String addvegetable(Vegetable v) {
        vegetableRep.save(v);
        return "redirect:/vegetable";
    }
}