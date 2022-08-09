package com.ezen.drmarten.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CustomErrorController implements ErrorController 
{
    private String VIEW_PATH = "thymeleaf/error/";

    @RequestMapping(value="/error")
    public String handleError(HttpServletRequest request, 
                        Model model) 
    {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if(status != null)
        {
            int statusCode = Integer.valueOf(status.toString());

            model.addAttribute("code", status.toString());
            model.addAttribute("msg", HttpStatus.valueOf(Integer.valueOf(status.toString())));
            model.addAttribute("querystring", request.getQueryString());

            if(statusCode == HttpStatus.NOT_FOUND.value()){
                return VIEW_PATH + statusCode;
            }
            if(statusCode == HttpStatus.FORBIDDEN.value()){
                return VIEW_PATH + statusCode;
            }
            if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()){
                return VIEW_PATH + statusCode;
            }
        }
        return "error";
    }
}