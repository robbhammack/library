/**
 * 
 */
package com.rhammack.library;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OrderBy;
import javax.persistence.Table;

/**
 * @author robb
 *
 */
@Entity
@Table(name="BOOKS_VIEW")
public class Book implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2722465158268137911L;
	/**
	 * @return the title
	 */
	@Column(name="title")
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the iSBN
	 */
	@Id
	@Column(name="ISBN")
	public String getISBN() {
		return ISBN;
	}
	/**
	 * @param iSBN the iSBN to set
	 */
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	/**
	 * @return the first_name
	 */
	@Column(name="first_name")
	public String getFirst_name() {
		return first_name;
	}
	/**
	 * @param firstName the first_name to set
	 */
	public void setFirst_name(String firstName) {
		first_name = firstName;
	}
	/**
	 * @return the last_name
	 */
	@Column(name="last_name")
	@OrderBy
	public String getLast_name() {
		return last_name;
	}
	/**
	 * @param lastName the last_name to set
	 */
	public void setLast_name(String lastName) {
		last_name = lastName;
	}
	/**
	 * @return the series_title
	 */
	@Column(name="series_title")
	public String getSeries_title() {
		return series_title;
	}
	/**
	 * @param seriesTitle the series_title to set
	 */
	public void setSeries_title(String seriesTitle) {
		series_title = seriesTitle;
	}
	/**
	 * @return the position
	 */
	@Column(name="position")
	public int getPosition() {
		return position;
	}
	/**
	 * @param position the position to set
	 */
	public void setPosition(int position) {
		this.position = position;
	}
	public  String title;
	public String ISBN;
	public String first_name;
	public String last_name;
	public String series_title;
	public int position;
	
}
