package com.quanlysinhvien.model;

import com.google.protobuf.Timestamp;

public class AbstractModel {
	private Long id;
	private Timestamp createdat;
	private Timestamp updatedat;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Timestamp getCreatedat() {
		return createdat;
	}
	public void setCreatedat(Timestamp createdat) {
		this.createdat = createdat;
	}
	public Timestamp getUpdatedat() {
		return updatedat;
	}
	public void setUpdatedat(Timestamp updatedat) {
		this.updatedat = updatedat;
	}
	
	
}
