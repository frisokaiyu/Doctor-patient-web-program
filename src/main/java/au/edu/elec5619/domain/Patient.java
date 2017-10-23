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
@Table(name="Patient")
public class Patient implements Serializable {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="username")
    private String username;
	
	@Column(name="password")
    private String password;
	
	@Column(name="firstname")
    private String firstname;

	@Column(name="lastname")
    private String lastname;
	
	@Column(name="age")
    private Integer age;
	
	@Column(name="gender")
    private String gender;

	@Column(name="birthday")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	
	@Column(name="phone")
    private String phone;
	
	@Column(name="email")
    private String email;
	
	@Column(name="bloodtype")
    private String bloodtype;
	
	@Column(name="illnessdesc")
    private String illnessdesc;

	public Patient() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getBloodtype() {
		return bloodtype;
	}

	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}

	public String getIllnessdesc() {
		return illnessdesc;
	}

	public void setIllnessdesc(String illnessdesc) {
		this.illnessdesc = illnessdesc;
	}

	@Override
	public String toString() {
		return "Patient [id=" + id + ", username=" + username + ", password=" + password + ", firstname=" + firstname
				+ ", lastname=" + lastname + ", age=" + age + ", gender=" + gender + ", birthday=" + birthday
				+ ", phone=" + phone + ", email=" + email + ", bloodtype=" + bloodtype + ", illnessdesc=" + illnessdesc
				+ "]";
	}

}
