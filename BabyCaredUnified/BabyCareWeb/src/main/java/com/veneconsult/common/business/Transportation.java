/**
 * 
 */
package com.veneconsult.common.business;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.IndexColumn;

import com.veneconsult.common.parent.AbstractPersistentObject;


/**
 * @author Yelitza
 *
 */

@SuppressWarnings(Transportation.UNUSED)
@Entity
@javax.persistence.Table(name="BC_TRANSPORTATION")

public class Transportation extends AbstractPersistentObject {

	static final String UNUSED = "unused";
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="TPN_DRIVER", length=50, nullable=false)
	private String driver;
	
	@Column (name="TPN_LICENSEPLATE", length=300, nullable=false)
	private String licenseplate;
	
	@Column (name="TPN_DESCRIPTION", length=300, nullable=false)
	private String description;


	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "transportation", orphanRemoval = true)
	//@JoinColumn(name="Id")
	//@IndexColumn(name="idx")
	private List<Children> children=new ArrayList<Children>();


	/**
	 * @return the driver
	 */
	public String getDriver() {
		return driver;
	}


	/**
	 * @param driver the driver to set
	 */
	public void setDriver(String driver) {
		this.driver = driver;
	}


	/**
	 * @return the licenseplate
	 */
	public String getLicenseplate() {
		return licenseplate;
	}


	/**
	 * @param licenseplate the licenseplate to set
	 */
	public void setLicenseplate(String licenseplate) {
		this.licenseplate = licenseplate;
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
	public List<Children> getChildren() {
		return children;
	}


	/**
	 * @param children the children to set
	 */
	public void setChildren(List<Children> children) {
		this.children = children;
	}


	/**
	 * @return the unused
	 */
	public static String getUnused() {
		return UNUSED;
	}


	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
