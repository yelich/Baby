/**
 * 
 */
package com.veneconsult.common.business;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.veneconsult.common.parent.AbstractPersistentObject;



/**
 * @author Yelitza
 *
 */
@Entity
@javax.persistence.Table(name="BC_RELATIONSHIP")
public class Relationship extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="RTP_DESCRIPTION", length=300, nullable=false)
	private String description;
	
	@ManyToOne
	@JoinColumn(name="Id")
	private Parent parent;
	


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
