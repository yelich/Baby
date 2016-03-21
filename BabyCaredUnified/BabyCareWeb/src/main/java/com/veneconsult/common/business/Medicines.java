/**
 * 
 */
package com.veneconsult.common.business;

import java.sql.Date;
import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.veneconsult.common.parent.AbstractPersistentObject;
import com.veneconsult.utilities.BooleanToIntegerConverter;


/**
 * @author Yelitza
 *
 */
@Entity
@javax.persistence.Table(name="BC_MEDICINES")
public class Medicines extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column (name="MDS_NAME", length=100, nullable=false)
	private String name;
	
	@Column (name="MDS_DOSAGE", nullable=false)
	private Number dosage;
	
	@Column (name="MDS_REPEATMEDICATION", nullable=false)
	@Convert(converter=BooleanToIntegerConverter.class)
    private Boolean repeatmedication;
	
	@Column (name="MDS_TIMEMEDICATIONT", nullable=false)
	private Time timemedication;

	@Column (name="MDS_EFFECTS", length=500, nullable=false)
	private String effects;
	
	@Column (name="MDS_DATEEXPIRATION", nullable=false)
	private Date dateeffects;
	
	@Column (name="MDS_INSTRUCTIONS", length=500, nullable=false)
	private String instructions;
	
	@Column (name="MDS_NAMEPHYSICIAN", length=500, nullable=false)
	private String namephysician;
	
	@Column (name="MDS_IDRX", nullable=false)
	private Number idrx;
	
	@ManyToOne
	@JoinColumn(name="BC_MEDICINE_ID")
	private Children children;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@ManyToMany(cascade = {CascadeType.ALL},mappedBy="medicines")
	private Set<Children> childrens=new HashSet();
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name="MedicinesPharmacy", joinColumns={@JoinColumn(name="BC_MEDICINES_ID")}, inverseJoinColumns={@JoinColumn(name="BC_PHARMACY_ID")})
	private Set<Pharmacy> pharmacys=new HashSet();

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
	 * @return the dosage
	 */
	public Number getDosage() {
		return dosage;
	}

	/**
	 * @param dosage the dosage to set
	 */
	public void setDosage(Number dosage) {
		this.dosage = dosage;
	}

	/**
	 * @return the repeatmedication
	 */
	public Boolean getRepeatmedication() {
		return repeatmedication;
	}

	/**
	 * @param repeatmedication the repeatmedication to set
	 */
	public void setRepeatmedication(Boolean repeatmedication) {
		this.repeatmedication = repeatmedication;
	}

	/**
	 * @return the timemedication
	 */
	public Time getTimemedication() {
		return timemedication;
	}

	/**
	 * @param timemedication the timemedication to set
	 */
	public void setTimemedication(Time timemedication) {
		this.timemedication = timemedication;
	}

	/**
	 * @return the effects
	 */
	public String getEffects() {
		return effects;
	}

	/**
	 * @param effects the effects to set
	 */
	public void setEffects(String effects) {
		this.effects = effects;
	}

	/**
	 * @return the dateeffects
	 */
	public Date getDateeffects() {
		return dateeffects;
	}

	/**
	 * @param dateeffects the dateeffects to set
	 */
	public void setDateeffects(Date dateeffects) {
		this.dateeffects = dateeffects;
	}

	/**
	 * @return the instructions
	 */
	public String getInstructions() {
		return instructions;
	}

	/**
	 * @param instructions the instructions to set
	 */
	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}

	/**
	 * @return the namephysician
	 */
	public String getNamephysician() {
		return namephysician;
	}

	/**
	 * @param namephysician the namephysician to set
	 */
	public void setNamephysician(String namephysician) {
		this.namephysician = namephysician;
	}

	/**
	 * @return the idrx
	 */
	public Number getIdrx() {
		return idrx;
	}

	/**
	 * @param idrx the idrx to set
	 */
	public void setIdrx(Number idrx) {
		this.idrx = idrx;
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
	 * @return the childrens
	 */
	public Set<Children> getChildrens() {
		return childrens;
	}

	/**
	 * @param childrens the childrens to set
	 */
	public void setChildrens(Set<Children> childrens) {
		this.childrens = childrens;
	}

	/**
	 * @return the pharmacys
	 */
	public Set<Pharmacy> getPharmacys() {
		return pharmacys;
	}

	/**
	 * @param pharmacys the pharmacys to set
	 */
	public void setPharmacys(Set<Pharmacy> pharmacys) {
		this.pharmacys = pharmacys;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

		
	
}
