/**
 * 
 */
package com.veneconsult.common.business;

import java.sql.Time;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
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
@javax.persistence.Table(name="BC_FEEDS")
public class Feeds extends AbstractPersistentObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column (name="FED_TIMEFEEDS", nullable=false)
	private Time timefeeds;

	@Column (name="FED_DESCRIPTION", length=500, nullable=false)
	private String effects;
	
	@Column (name="FED_COST", nullable=false)
	private Double cost;
	
	@Column (name="FED_COIN", length=500, nullable=false)
	private String coin;
	
	@SuppressWarnings("deprecation")
	@OneToMany(cascade= CascadeType.ALL)
	@JoinColumn(name="Id")
	@IndexColumn(name="idx")
	private List<School> school;
	
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Activites activites;

	/**
	 * @return the timefeeds
	 */
	public Time getTimefeeds() {
		return timefeeds;
	}

	/**
	 * @param timefeeds the timefeeds to set
	 */
	public void setTimefeeds(Time timefeeds) {
		this.timefeeds = timefeeds;
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
	 * @return the cost
	 */
	public Double getCost() {
		return cost;
	}

	/**
	 * @param cost the cost to set
	 */
	public void setCost(Double cost) {
		this.cost = cost;
	}

	/**
	 * @return the coin
	 */
	public String getCoin() {
		return coin;
	}

	/**
	 * @param coin the coin to set
	 */
	public void setCoin(String coin) {
		this.coin = coin;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
