/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MAHBUB
 */
public class MainAction implements Action {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws SecurityException {
        return "/main.jsp";
    }

}
