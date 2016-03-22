/**
 * 
 */
package com.veneconsult.common.business;

/**
 * @author Georman
 *
 */
public enum RelationShipDefinition {
	
	FATHER("Father"),
	MOTHER("Mother"),
	UNCLE("Uncle"),
	AUNT("Aunt");
	
	
	public String getRelationShip() {
		return relationShip;
	}

	public void setRelationShip(String relationShip) {
		this.relationShip = relationShip;
	}

	private String relationShip;
	
	private RelationShipDefinition(String relationShip){
		this.setRelationShip(relationShip);
	}
	


}
