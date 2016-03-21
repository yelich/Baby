/**
 * 
 */
package com.veneconsult.common.business;

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

@Entity
@javax.persistence.Table(name="BC_PHARMACY")
public class Pharmacy extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="PRY_NAME", length=100, nullable=false)
	private String name;
	
	@Column (name="PRY_RXNUM", nullable=false)
	private Number rxnum;
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@ManyToMany(cascade = {CascadeType.ALL},mappedBy="pharmacys")
	private Set<Medicines> medicines=new HashSet();

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
	 * @return the rxnum
	 */
	public Number getRxnum() {
		return rxnum;
	}

	/**
	 * @param rxnum the rxnum to set
	 */
	public void setRxnum(Number rxnum) {
		this.rxnum = rxnum;
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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
