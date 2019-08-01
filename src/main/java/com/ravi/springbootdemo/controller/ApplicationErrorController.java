package com.ravi.springbootdemo.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Controller
public class ApplicationErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, ModelMap modelMap) {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (status != null) {
            Integer statusCode = Integer.valueOf(status.toString());

            if (statusCode == HttpStatus.NOT_FOUND.value()) {
                modelMap.put("errorCode", "404");
                modelMap.put("errorMessage", "Client Error: Resource not found.");
            } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                modelMap.put("errorCode", "500");
                modelMap.put("errorMessage", "Server Error: Please contact application support.");
            } else {
                modelMap.put("errorCode", "000");
                modelMap.put("errorMessage", "Generic Error: Generic error message.");
            }
        }

        return "error";
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}