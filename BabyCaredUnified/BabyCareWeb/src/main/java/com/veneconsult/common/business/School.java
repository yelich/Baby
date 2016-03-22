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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.hibernate.annotations.IndexColumn;

import com.veneconsult.common.parent.AbstractPersistentObject;



/**
 * @author Yelitza
 *
 */

@Entity
@javax.persistence.Table(name="BC_SCHOOL")
public class School extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column (name="SHL_NAME", length=100, nullable=false)
	private String name;
	
	@Column (name="SHL_LEVEL", length=100, nullable=false)
	private String level;
	
	@Column (name="SHL_GRADE", nullable=false)
	private Number grade;
	
	@Column (name="SHL_NAMEPRINCIPAL", length=100, nullable=false)
	private String nameprincipal;
		
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Address address;
	
	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "school", orphanRemoval = true)
	//@JoinColumn(name="Id")
	//@IndexColumn(name="idx")
	private List<Email> email=new ArrayList<Email>();
	
	@SuppressWarnings("deprecation")
	//@OneToMany(cascade= CascadeType.ALL)
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "school", orphanRemoval = true)
	//@JoinColumn(name="Id")
	//@IndexColumn(name="idx")
	private List<Phone> phone=new ArrayList<Phone>();
	
	@ManyToOne
	@JoinColumn(name="BC_FEEDS_ID",nullable=true)
	private Feeds feeds;
	
	public School(){
		this.email=new ArrayList<Email>();
		this.phone=new ArrayList<Phone>();
	}

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
	 * @return the level
	 */
	public String getLevel() {
		return level;
	}

	/**
	 * @param level the level to set
	 */
	public void setLevel(String level) {
		this.level = level;
	}

	/**
	 * @return the grade
	 */
	public Number getGrade() {
		return grade;
	}

	/**
	 * @param grade the grade to set
	 */
	public void setGrade(Number grade) {
		this.grade = grade;
	}

	/**
	 * @return the nameprincipal
	 */
	public String getNameprincipal() {
		return nameprincipal;
	}

	/**
	 * @param nameprincipal the nameprincipal to set
	 */
	public void setNameprincipal(String nameprincipal) {
		this.nameprincipal = nameprincipal;
	}

	/**
	 * @return the address
	 */
	public Address getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(Address address) {
		this.address = address;
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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
	
}
