package au.edu.elec5619.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name="Appoint")
public class Appoint implements Serializable {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="doctorid")
    private String doctorid;
	
	@Column(name="time1")
    private String time1;
	
	@Column(name="time1patid")
    private String time1patid;
	
	@Column(name="time2")
    private String time2;
	
	@Column(name="time2patid")
    private String time2patid;
	
	@Column(name="time3")
    private String time3;
	
	@Column(name="time3patid")
    private String time3patid;
	
	@Column(name="time4")
    private String time4;
	
	@Column(name="time4patid")
    private String time4patid;
	
	@Column(name="time5")
    private String time5;
	
	@Column(name="time5patid")
    private String time5patid;
	
	@Column(name="time6")
    private String time6;
	
	@Column(name="time6patid")
    private String time6patid;
	
	@Column(name="time7")
    private String time7;
	
	@Column(name="time7patid")
    private String time7patid;
	
	@Column(name="time8")
    private String time8;
	
	@Column(name="time8patid")
    private String time8patid;
	
	@Column(name="createdate")
    private Date createdate;

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

	public String getTime1() {
		return time1;
	}

	public void setTime1(String time1) {
		this.time1 = time1;
	}

	public String getTime1patid() {
		return time1patid;
	}

	public void setTime1patid(String time1patid) {
		this.time1patid = time1patid;
	}

	public String getTime2() {
		return time2;
	}

	public void setTime2(String time2) {
		this.time2 = time2;
	}

	public String getTime2patid() {
		return time2patid;
	}

	public void setTime2patid(String time2patid) {
		this.time2patid = time2patid;
	}

	public String getTime3() {
		return time3;
	}

	public void setTime3(String time3) {
		this.time3 = time3;
	}

	public String getTime3patid() {
		return time3patid;
	}

	public void setTime3patid(String time3patid) {
		this.time3patid = time3patid;
	}

	public String getTime4() {
		return time4;
	}

	public void setTime4(String time4) {
		this.time4 = time4;
	}

	public String getTime4patid() {
		return time4patid;
	}

	public void setTime4patid(String time4patid) {
		this.time4patid = time4patid;
	}

	public String getTime5() {
		return time5;
	}

	public void setTime5(String time5) {
		this.time5 = time5;
	}

	public String getTime5patid() {
		return time5patid;
	}

	public void setTime5patid(String time5patid) {
		this.time5patid = time5patid;
	}

	public String getTime6() {
		return time6;
	}

	public void setTime6(String time6) {
		this.time6 = time6;
	}

	public String getTime6patid() {
		return time6patid;
	}

	public void setTime6patid(String time6patid) {
		this.time6patid = time6patid;
	}

	public String getTime7() {
		return time7;
	}

	public void setTime7(String time7) {
		this.time7 = time7;
	}

	public String getTime7patid() {
		return time7patid;
	}

	public void setTime7patid(String time7patid) {
		this.time7patid = time7patid;
	}

	public String getTime8() {
		return time8;
	}

	public void setTime8(String time8) {
		this.time8 = time8;
	}

	public String getTime8patid() {
		return time8patid;
	}

	public void setTime8patid(String time8patid) {
		this.time8patid = time8patid;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	@Override
	public String toString() {
		return "Appoint [id=" + id + ", doctorid=" + doctorid + ", time1=" + time1 + ", time1patid=" + time1patid
				+ ", time2=" + time2 + ", time2patid=" + time2patid + ", time3=" + time3 + ", time3patid=" + time3patid
				+ ", time4=" + time4 + ", time4patid=" + time4patid + ", time5=" + time5 + ", time5patid=" + time5patid
				+ ", time6=" + time6 + ", time6patid=" + time6patid + ", time7=" + time7 + ", time7patid=" + time7patid
				+ ", time8=" + time8 + ", time8patid=" + time8patid + ", createdate=" + createdate + "]";
	}

}
