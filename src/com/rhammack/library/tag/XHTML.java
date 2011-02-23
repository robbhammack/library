

/*
 * based on http://svn.apache.org/repos/asf/tomcat/taglibs/standard/trunk/impl/src/main/java/org/apache/taglibs/standard/tag/common/sql/QueryTagSupport.java
 * needs a lot more work
 * 
 */
package com.rhammack.library.tag;
import java.io.IOException;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.servlet.jsp.jstl.sql.SQLExecutionTag;

import org.apache.taglibs.standard.resources.Resources;
import org.apache.taglibs.standard.tag.common.sql.DataSourceUtil;
import org.apache.taglibs.standard.tag.common.sql.TransactionTagSupport;

public class XHTML extends TagSupport /*implements  SQLExecutionTag*/
{
	private static final long serialVersionUID = -8333655427564599341L;
    private Connection conn;
	private String dataSource=null;
	private String sql=null;
	private String idField=null;
	private String displayField=null;
	private String name=null;
	
    protected Object rawDataSource;
    protected boolean dataSourceSpecified;

	
	/**
	 * @return the name
	 */
	public String getName() 
	{
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) 
	{
		this.name = name;
	}

	/**
	 * @return the sql
	 */
	public String getSql() 
	{
		return sql;
	}

	/**
	 * @param sql the sql to set
	 */
	public void setSql(String sql) 
	{
		this.sql = sql;
	}

	/**
	 * @return the idField
	 */
	public String getIdField() 
	{
		return idField;
	}

	/**
	 * @param idField the idField to set
	 */
	public void setIdField(String idField) 
	{
		this.idField = idField;
	}

	/**
	 * @return the displayField
	 */
	public String getDisplayField() 
	{
		return displayField;
	}

	/**
	 * @param displayField the displayField to set
	 */
	public void setDisplayField(String displayField) 
	{
		this.displayField = displayField;
	}

    /**
      * Getter/Setter for the attribute name as defined in the tld file 
      * for this tag
      */
public void setDataSource(String value)
{
	dataSource = value;
	
}

public String getDataSource()
{
          return(dataSource);
}




/**
* doStartTag is called by the JSP container when the tag is encountered
*/
    public int doStartTag() {
	  try {
        JspWriter out = pageContext.getOut();
        out.println("<select name=" + this.name + "id="+ this.name +"\">");

	      out.println("<tr><td> Hello " + name + " </td></tr>");

	      out.println("<tr><td> Hello World </td></tr>");
	  } 
	  catch (Exception ex) 
	  {
		  JspWriter out = pageContext.getOut();
		  try 
		  {
			out.println(ex.getMessage());
		  } 
		  catch (IOException e) 
		  {
			
			e.getMessage();
		}
	  }
	  // Must return SKIP_BODY because we are not supporting a body for this 
	  // tag.
	  return SKIP_BODY;
    }
/**
 * doEndTag is called by the JSP container when the tag is closed
 */
	public int doEndTag(){
	   try {
        	JspWriter out = pageContext.getOut();
	       out.println("</table>");
	   } catch (Exception ex){
	    	throw new Error("All is not well in the world.");
	   }
	   return 1;
	}
	
    private Connection getConnection() throws JspException, SQLException {
        // Fix: Add all other mechanisms
        Connection conn = null;
        boolean isPartOfTransaction = false;

        TransactionTagSupport parent = (TransactionTagSupport) findAncestorWithClass(this, TransactionTagSupport.class);
        if (parent != null) {
            if (dataSourceSpecified) {
                throw new JspTagException(Resources.getMessage("ERROR_NESTED_DATASOURCE"));
            }
            conn = parent.getSharedConnection();
            isPartOfTransaction = true;
        } else {
            if ((rawDataSource == null) && dataSourceSpecified) {
                throw new JspException(Resources.getMessage("SQL_DATASOURCE_NULL"));
            }
       //     DataSource dataSource = DataSourceUtil.getDataSource(rawDataSource,
         //           pageContext);
            try {
       //         conn = dataSource.getConnection();
            } catch (Exception ex) {
                throw new JspException(Resources.getMessage("DATASOURCE_INVALID",
                        ex.toString()));
            }
        }

        return conn;
    }
	
}
