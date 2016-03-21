/**
 * 
 */
package com.veneconsult.common.business;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.veneconsult.common.parent.AbstractPersistentObject;

/**
 * @author Yelitza
 *
 */
@SuppressWarnings("unused")
@Entity
@javax.persistence.Table(name="BC_EMAIL")
public class Email extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column (name="EML_ADDRESSEMAIL", length=100, nullable=false)
	private String addressemail;
	
	@ManyToOne
	@JoinColumn(name="BC_PARENT_ID")
	private Parent parent;
	
	@ManyToOne
	@JoinColumn(name="BC_SCHOOL_ID")
	private School school;
	
	@ManyToOne
	@JoinColumn(name="BC_CHILDREN_ID")
	private Children children;

	/**
	 * @return the addressemail
	 */
	public String getAddressemail() {
		return addressemail;
	}

	/**
	 * @param addressemail the addressemail to set
	 */
	public void setAddressemail(String addressemail) {
		this.addressemail = addressemail;
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
	 * @return the children
	 */
	public Children getChildren() {
		return children;
	}

	/**
	 * @param children the children to set
	 */
	public void setChildren(Children children) {
		this.children = children;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

	
	
}
