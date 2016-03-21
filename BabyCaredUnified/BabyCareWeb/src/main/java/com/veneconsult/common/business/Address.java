/**
 * 
 */
package com.veneconsult.common.business;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.hibernate.annotations.Table;

import com.veneconsult.common.parent.AbstractPersistentObject;



/**
 * @author Yelitza
 *
 */
@SuppressWarnings("unused")
@Entity
@javax.persistence.Table(name="BC_ADDRESS")

public class Address extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="ADS_CITY", length=100, nullable=false)
	private String city;
	
	@Column (name="ADS_STATE", length=100, nullable=false)
	private String state;
	
	@Column (name="ADS_ADDRESS", length=100, nullable=false)
	private String address;
	
	@Column (name="ADS_ZIPCODE", length=100, nullable=false)
	private String zipcode;

	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private School school;
	
	@ManyToOne
	@JoinColumn(name="Id")
	private Parent parent;

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the zipcode
	 */
	public String getZipcode() {
		return zipcode;
	}

	/**
	 * @param zipcode the zipcode to set
	 */
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	/**
	 * @return the school
	 */
	public School getSchool() {
		return school;
	}

	/**
	 * @param school the school to set
	 */
	public void setSchool(School school) {
		this.school = school;
	}

	/**
	 * @return the parent
	 */
	public Parent getParent() {
		return parent;
	}

	/**
	 * @param parent the parent to set
	 */
	public void setParent(Parent parent) {
		this.parent = parent;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

	
	

}
