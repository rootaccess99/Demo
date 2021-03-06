// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ibps.demo.web;

import com.ibps.demo.Examl;
import com.ibps.demo.web.ExamlController;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect ExamlController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{questionId}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> ExamlController.showJson(@PathVariable("questionId") Integer questionId) {
        Examl examl = Examl.findExaml(questionId);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (examl == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(examl.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> ExamlController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Examl> result = Examl.findAllExamls();
        return new ResponseEntity<String>(Examl.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> ExamlController.createFromJson(@RequestBody String json) {
        Examl examl = Examl.fromJsonToExaml(json);
        examl.persist();
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> ExamlController.createFromJsonArray(@RequestBody String json) {
        for (Examl examl: Examl.fromJsonArrayToExamls(json)) {
            examl.persist();
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{questionId}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> ExamlController.updateFromJson(@RequestBody String json, @PathVariable("questionId") Integer questionId) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Examl examl = Examl.fromJsonToExaml(json);
        if (examl.merge() == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{questionId}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> ExamlController.deleteFromJson(@PathVariable("questionId") Integer questionId) {
        Examl examl = Examl.findExaml(questionId);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (examl == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        examl.remove();
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}
