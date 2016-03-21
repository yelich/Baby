/**
 * 
 */
package com.veneconsult.common.business;

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

import org.hibernate.annotations.Table;

import com.veneconsult.common.parent.AbstractPersistentObject;
import com.veneconsult.utilities.BooleanToIntegerConverter;



/**
 * @author Yelitza
 *
 */
@SuppressWarnings("unused")
@Entity
@javax.persistence.Table(name="BC_AUTHORIZATION")

public class Authorization extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="ATN_PHOTO", nullable=false)
	@Convert(converter=BooleanToIntegerConverter.class)
    private Boolean photo;
	
	@Column (name="ATN_MEDICATION", nullable=false)
	@Convert(converter=BooleanToIntegerConverter.class)
    private Boolean medication;
	
	@Column (name="ATN_ACTIVITY", nullable=false)
	@Convert(converter=BooleanToIntegerConverter.class)
    private Boolean activity;
	
	@Column (name="ATN_PICKUP", nullable=false)
	@Convert(converter=BooleanToIntegerConverter.class)
    private Boolean pickup;
	
	@Column (name="ATN_EMERGENCY", nullable=false)
	@Convert(converter=BooleanToIntegerConverter.class)
    private Boolean emergency;
	
	@Column (name="ATN_TRANSPORTATION", nullable=false)
	@Convert(converter=BooleanToIntegerConverter.class)
    private Boolean transportation;
	
	@ManyToOne
	@JoinColumn(name="Id")
	private Parent parent;
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name="AuthorizationActivites", joinColumns={@JoinColumn(name="BC_AUTHORIZATION_ID")}, inverseJoinColumns={@JoinColumn(name="BC_ACTIVITIES_ID")})
	private Set<Activites> activites = new HashSet();

	/**
	 * @return the photo
	 */
	public Boolean getPhoto() {
		return photo;
	}

	/**
	 * @param photo the photo to set
	 */
	public void setPhoto(Boolean photo) {
		this.photo = photo;
	}

	/**
	 * @return the medication
	 */
	public Boolean getMedication() {
		return medication;
	}

	/**
	 * @param medication the medication to set
	 */
	public void setMedication(Boolean medication) {
		this.medication = medication;
	}

	/**
	 * @return the activity
	 */
	public Boolean getActivity() {
		return activity;
	}

	/**
	 * @param activity the activity to set
	 */
	public void setActivity(Boolean activity) {
		this.activity = activity;
	}

	/**
	 * @return the pickup
	 */
	public Boolean getPickup() {
		return pickup;
	}

	/**
	 * @param pickup the pickup to set
	 */
	public void setPickup(Boolean pickup) {
		this.pickup = pickup;
	}

	/**
	 * @return the emergency
	 */
	public Boolean getEmergency() {
		return emergency;
	}

	/**
	 * @param emergency the emergency to set
	 */
	public void setEmergency(Boolean emergency) {
		this.emergency = emergency;
	}

	/**
	 * @return the transportation
	 */
	public Boolean getTransportation() {
		return transportation;
	}

	/**
	 * @param transportation the transportation to set
	 */
	public void setTransportation(Boolean transportation) {
		this.transportation = transportation;
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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
