package com.neu.finalproject.filters;

import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletRequestWrapper;
public class XSSRequestWrapper extends HttpServletRequestWrapper{
    
    public XSSRequestWrapper(HttpServletRequest servletRequest) {

      super(servletRequest);

  }
    @Override

  public String getParameter(String parameter) {

      String value = super.getParameter(parameter);


      return stripXSS(value);
   }
   
    private String stripXSS(String value)
    {
         if (value != null)
         {
             // Avoid anything between script tags

          //Pattern scriptPattern = Pattern.compile("<script>(.*?)</script>", Pattern.CASE_INSENSITIVE);

          value = value.replaceAll("[^a-zA-Z0-9_.]+", "");
             
           //Avoid anything between script tags

          Pattern scriptPattern = Pattern.compile("<script>(.*?)</script>", Pattern.CASE_INSENSITIVE);

          value = scriptPattern.matcher(value).replaceAll("");
           
           // Remove any lonesome </script> tag

          scriptPattern = Pattern.compile("</script>", Pattern.CASE_INSENSITIVE);

          value = scriptPattern.matcher(value).replaceAll("");



          // Avoid javascript:... expressions

          scriptPattern = Pattern.compile("javascript:", Pattern.CASE_INSENSITIVE);

          value = scriptPattern.matcher(value).replaceAll("");
                       


        }
         
         return value;

  }


  
}
