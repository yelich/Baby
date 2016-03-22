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
@Entity
@javax.persistence.Table(name="BC_PHONE")
public class Phone extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="PHE_DESCRIPTION", length=100, nullable=false)
	private String description;
	
	@Column (name="PHE_NUMBER", nullable=false)
	private Number number;
	
	@ManyToOne
	@JoinColumn(name="BC_PARENT_ID", nullable=true)
	private Parent parent;
	
	@ManyToOne
	@JoinColumn(name="BC_CHILDREN_ID", nullable=true)
	private Children children;
	
	@ManyToOne
	@JoinColumn(name="BC_SCHOOL_ID", nullable=true)
	private School school;

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the number
	 */
	public Number getNumber() {
		return number;
	}

	/**
	 * @param number the number to set
	 */
	public void setNumber(Number number) {
		this.number = number;
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
