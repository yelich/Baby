/**
 * 
 */
package com.veneconsult.common.business;

import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;

import com.veneconsult.common.parent.AbstractPersistentObject;

/**
 * @author Yelitza
 *
 */
@SuppressWarnings("unused")
@Entity
@javax.persistence.Table(name="BC_ACTIVITES")
public class Activites extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column (name="ACT_NAME", length=100, nullable=false)
	private String name;
	
	@Column (name="ACT_DESCRIPTION", length=100, nullable=false)
	private String description;
	
	@Column (name="ACT_TIMESTART", nullable=false)
	private Time timestart;
	
	@Column (name="ACT_TIMEFINISH", nullable=false)
	private Time timefinish;
		
	@Column (name="ACT_DATESTART", nullable=false)
	private Time datestart;
	
	@Column (name="ACT_DATEFINISH", nullable=false)
	private Time datefinish;
	
	@Column (name="ACT_LOCATION", length=100, nullable=false)
	private String location;
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@ManyToMany(cascade = {CascadeType.ALL},mappedBy="activites")
	private Set<Authorization> authorizations=new HashSet();
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@ManyToMany(cascade = {CascadeType.ALL},mappedBy="activites")
	private Set<Children> chidrens=new HashSet();

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
	 * @return the timestart
	 */
	public Time getTimestart() {
		return timestart;
	}

	/**
	 * @param timestart the timestart to set
	 */
	public void setTimestart(Time timestart) {
		this.timestart = timestart;
	}

	/**
	 * @return the timefinish
	 */
	public Time getTimefinish() {
		return timefinish;
	}

	/**
	 * @param timefinish the timefinish to set
	 */
	public void setTimefinish(Time timefinish) {
		this.timefinish = timefinish;
	}

	/**
	 * @return the datestart
	 */
	public Time getDatestart() {
		return datestart;
	}

	/**
	 * @param datestart the datestart to set
	 */
	public void setDatestart(Time datestart) {
		this.datestart = datestart;
	}

	/**
	 * @return the datefinish
	 */
	public Time getDatefinish() {
		return datefinish;
	}

	/**
	 * @param datefinish the datefinish to set
	 */
	public void setDatefinish(Time datefinish) {
		this.datefinish = datefinish;
	}

	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}

	/**
	 * @return the authorizations
	 */
	public Set<Authorization> getAuthorizations() {
		return authorizations;
	}

	/**
	 * @param authorizations the authorizations to set
	 */
	public void setAuthorizations(Set<Authorization> authorizations) {
		this.authorizations = authorizations;
	}

	/**
	 * @return the chidrens
	 */
	public Set<Children> getChidrens() {
		return chidrens;
	}

	/**
	 * @param chidrens the chidrens to set
	 */
	public void setChidrens(Set<Children> chidrens) {
		this.chidrens = chidrens;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
	
}
