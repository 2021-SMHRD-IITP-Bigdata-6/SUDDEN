package com.inter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Login_Command {

	

	public String execute(HttpServletRequest request, HttpServletResponse response, String command) throws ServletException, IOException ;
}
