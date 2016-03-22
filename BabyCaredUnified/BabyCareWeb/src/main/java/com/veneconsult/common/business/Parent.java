/**
 * 
 */
package com.veneconsult.common.business;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import org.hibernate.annotations.IndexColumn;

import com.veneconsult.common.parent.AbstractPersistentObject;
import com.veneconsult.utilities.BooleanToIntegerConverter;



/**
 * @author Yelitza
 *
 */

@Entity
@javax.persistence.Table(name="BC_PARENT")
public class Parent extends AbstractPersistentObject{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="PRT_FIRSTNAME", length=100, nullable=false)
	private String firstname;
	
	@Column (name="PRT_LASTNAME", length=100, nullable=false)
	private String lastname;
	
	@Column (name="PRT_RELATIONSHIP",length=100, nullable=false)
    private String relationship=RelationShipDefinition.FATHER.getRelationShip();
		
	@Column (name="PRT_PLACEEMPLOY", length=100, nullable=false)
	private String placeemploy;
	
	@Column (name="PRT_NUMLICENSE", length=20, nullable=false)
	private String numlicense;
	
	@ManyToMany(cascade= CascadeType.ALL)
    @JoinColumn(name="Id")
    private java.util.Set<Children> childrens = new HashSet<Children>();
    	
	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "parent", orphanRemoval = true)
	//@JoinColumn(name="Id")
	//@IndexColumn(name="idx")
	private List<Address> address=new ArrayList<Address>();
	
	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "parent", orphanRemoval = true)
	//@JoinColumn(name="Id")
	//@IndexColumn(name="idx")
	private List<Phone> phone=new ArrayList<Phone>();
		
	@OneToMany(cascade= CascadeType.ALL)
	@JoinColumn(name="Id")
	private List<Authorization> authorization=new ArrayList<Authorization>();
	


	
	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "parent", orphanRemoval = true)
	//@JoinColumn(name="Id")
	//@IndexColumn(name="idx")
	private List<Email> email=new ArrayList<Email>();

	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}

	/**
	 * @param firstname the firstname to set
	 */
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}

	/**
	 * @param lastname the lastname to set
	 */
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	/**
	 * @return the relationship
	 */
	public String getRelationship() {
		return relationship;
	}

	/**
	 * @param relationship the relationship to set
	 */
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	/**
	 * @return the placeemploy
	 */
	public String getPlaceemploy() {
		return placeemploy;
	}

	/**
	 * @param placeemploy the placeemploy to set
	 */
	public void setPlaceemploy(String placeemploy) {
		this.placeemploy = placeemploy;
	}

	/**
	 * @return the numlicense
	 */
	public String getNumlicense() {
		return numlicense;
	}

	/**
	 * @param numlicense the numlicense to set
	 */
	public void setNumlicense(String numlicense) {
		this.numlicense = numlicense;
	}

	/**
	 * @return the childrens
	 */
	public java.util.Set<Children> getChildrens() {
		return childrens;
	}

	/**
	 * @param childrens the childrens to set
	 */
	public void setChildrens(java.util.Set<Children> childrens) {
		this.childrens = childrens;
	}

	/**
	 * @return the address
	 */
	public List<Address> getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(List<Address> address) {
		this.address = address;
	}

	/**
	 * @return the phone
	 */
	public List<Phone> getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(List<Phone> phone) {
		this.phone = phone;
	}

	/**
	 * @return the authorization
	 */
	public List<Authorization> getAuthorization() {
		return authorization;
	}

	/**
	 * @param authorization the authorization to set
	 */
	public void setAuthorization(List<Authorization> authorization) {
		this.authorization = authorization;
	}




	/**
	 * @return the email
	 */
	public List<Email> getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(List<Email> email) {
		this.email = email;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
