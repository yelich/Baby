/**
 * 
 */
package com.veneconsult.common.business;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.hibernate.annotations.IndexColumn;
import org.hibernate.annotations.Table;
















import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;




import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import com.veneconsult.common.parent.AbstractPersistentObject;
import com.veneconsult.utilities.BooleanToIntegerConverter;


/**
 * @author Yelitza
 *
 */
@Entity
@javax.persistence.Table(name="BC_CHILDREN")
public class Children extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="CDN_FIRSTNAME", length=100, nullable=false)
	private String firstname;
	
	@Column (name="CDN_LASTNAME", length=100, nullable=false)
	private String lastname;
	
	//@Column (name="CDN_PARENTS", nullable=false) //Tipo: Father, mother//
	//@Convert(converter=BooleanToIntegerConverter.class)
    //private Boolean parents;
	
	
	@Column (name="CDN_SEX", length=100, nullable=false)
	private String sex;
	
	@Column (name="CDN_BIRTH", nullable=false)
	private Date birth;
	
	@SuppressWarnings("deprecation")
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "Children_Parents",
	    joinColumns = {
	        @JoinColumn(
	            name = "BC_CHILDREN_ID", 
	            referencedColumnName = "ID"
	        )
	    },
	    inverseJoinColumns = {
	        @JoinColumn(
	            name = "BC_PARENT_ID", 
	            referencedColumnName = "ID"
	        )
	    }
	)
	private List<Parent> parent=new ArrayList<Parent>();
	
	
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private School school;
	
	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "children", orphanRemoval = true)
	//@JoinColumn(name="BC_PHONE_ID")
	//@IndexColumn(name="idx")
	private List<Phone> phone=new ArrayList<Phone>();
	
	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL,mappedBy = "children", orphanRemoval = true)
	//@JoinColumn(name="BC_EMAIL_ID")
	//@IndexColumn(name="idx")
	private List<Email> email=new ArrayList<Email>();
	
	@ManyToOne
	@JoinColumn(name="BC_TRANSPORTATION_ID",nullable=true)
	private Transportation transportation;
	

	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name="ChildrenMedicines", joinColumns={@JoinColumn(name="BC_CHILDREN_ID")}, inverseJoinColumns={@JoinColumn(name="BC_MEDICINES_ID")})
	private Set<Medicines> medicines=new HashSet();
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name="ChildrenActivites", joinColumns={@JoinColumn(name="BC_CHILDREN_ID")}, inverseJoinColumns={@JoinColumn(name="BC_ACTIVITIES_ID")})
	private Set<Activites> activites=new HashSet();

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
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * @param sex the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * @return the birth
	 */
	public Date getBirth() {
		return birth;
	}

	/**
	 * @param birth the birth to set
	 */
	public void setBirth(Date birth) {
		this.birth = birth;
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
	 * @return the transportation
	 */
	public Transportation getTransportation() {
		return transportation;
	}

	/**
	 * @param transportation the transportation to set
	 */
	public void setTransportation(Transportation transportation) {
		this.transportation = transportation;
	}



	/**
	 * @return the medicines
	 */
	public Set<Medicines> getMedicines() {
		return medicines;
	}

	/**
	 * @param medicines the medicines to set
	 */
	public void setMedicines(Set<Medicines> medicines) {
		this.medicines = medicines;
	}

	/**
	 * @return the activites
	 */
	public Set<Activites> getActivites() {
		return activites;
	}

	/**
	 * @param activites the activites to set
	 */
	public void setActivites(Set<Activites> activites) {
		this.activites = activites;
	}
	
	/**
	 * @return the parent
	 */
	public List<Parent> getParent() {
		return parent;
	}

	/**
	 * @param parent the parent to set
	 */
	public void setParent(List<Parent> parent) {
		this.parent = parent;
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
