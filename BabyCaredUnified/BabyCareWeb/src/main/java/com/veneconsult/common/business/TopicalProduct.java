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
@javax.persistence.Table(name="BC_TOPICALPRODUCT")

public class TopicalProduct extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="TPT_NAME", length=100, nullable=false)
	private String name;
	
	@Column (name="TPT_DESCRIPTION", length=100, nullable=false)
	private String description;
	
	@ManyToOne
	@JoinColumn(name="Id")
	private Children children;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

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
