package com.ibps.demo.web;
import com.ibps.demo.Examl;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/examls")
@Controller
@RooWebScaffold(path = "examls", formBackingObject = Examl.class)
@RooWebJson(jsonObject = Examl.class)
public class ExamlController {
}
