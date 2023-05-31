package com.quanlysinhvien.model;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class AbstractModel {
	private Long id;
	private Timestamp createdat;
	private Timestamp updatedat;
	
}
