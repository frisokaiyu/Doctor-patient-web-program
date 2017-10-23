package au.edu.elec5619.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Apporder")  
public class Apporder implements Serializable {
	

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="doctorid")
    private String doctorid;
	
	@Column(name="doctorname")
    private String doctorname;
	
	@Column(name="patientid")
    private String patientid;
	
	@Column(name="patname")
    private String patname;
	
	@Column(name="createtime")
    private Date createtime;
	
	@Column(name="appointtime")
    private String appointtime;
	
	@Column(name="appointdate")
    private String appointdate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}

	public String getPatientid() {
		return patientid;
	}

	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String getPatname() {
		return patname;
	}

	public void setPatname(String patname) {
		this.patname = patname;
	}
	
	public String getdoctorname() {
		return doctorname;
	}

	public void setdoctorame(String doctorname) {
		this.doctorname = doctorname;
	}
	
	public String getappointtime() {
		return appointtime;
	}

	public void setappointtime(String appointtime) {
		this.appointtime = appointtime;
	}
	
	public String getappointdate() {
		return appointdate;
	}

	public void setappointdate(String appointdate) {
		this.appointdate = appointdate;
	}

}
