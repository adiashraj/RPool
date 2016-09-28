package com.niit.rpms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.joda.time.LocalDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.niit.rpms.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insertEmployee(Employee employee) {

		String query = "INSERT INTO RPMS.EMP_INFO (EMP_ID, NAME, ROLE, PRIMARY_SKILL, LOCATION, PRACTICE, MAIN_SKILLS, SEC_SKILLS, "
				+ "EXP, PSA, OVERSEAS, RELEASE_DATE, CONTACT, LAST_PROJ, INTERNAL_ASSGN, VERTICAL, PERSONAL_DETAILS, TRAINING, REMARKS, "
				+ "LEAVE_STATUS, STATUS, LOCATION_OF_RES, PASSPORT_STATUS, OVERALL_COMM_RAITING, DATE_OF_JOIN, VISA, BAND, PLAN, TECH_ROLE, "
				+ "DESIGNATION, EMAIL, SSA, RESOURCE_NO, GENDER, LEVEL, OPPORTUNITY, LOGIN_ID, CREATED_TIME, UPDATED_TIME) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		String relaseDate = convertDate(employee.getReleaseDate());
		String doj = convertDate(employee.getDateOfJoining());
		long uniqueNo = new Date().getTime();
		String resourceNo = "REF - " + uniqueNo;
		employee.setResourceNo(resourceNo);

		int rs = jdbcTemplate.update(query, employee.getEmpId(),
				employee.getEmpName(), employee.getEmpRole(),
				employee.getPrimarySkill(), employee.getLocation(),
				employee.getPractise(), employee.getMainSkill(),
				employee.getSecondarySkill(), employee.getExperince(),
				employee.getPsa(), employee.getOverseas(), relaseDate,
				employee.getContact(), employee.getLastProject(),
				employee.getInternalAssignment(), employee.getVertical(),
				employee.getPersonalDetail(), employee.getTraining(),
				employee.getRemarks(), employee.getLeaveStatus(),
				employee.getStatus(), employee.getLocationOfResidence(),
				employee.getPassportStatus(), employee.getOverallRating(), doj,
				employee.getVisa(), employee.getBand(), employee.getPlan(),
				employee.getRole(), employee.getDesignation(),
				employee.getEmail(), employee.getSsa(), resourceNo,
				employee.getGender(), employee.getLevel(),
				employee.getNoOfOpportunity(), 12345,
				convertDateTime(new Date()), convertDateTime(new Date()));
		return rs;

	}

	public int updateEmployee(Employee e) {
		return 0;
	}

	public int deleteEmployee(Employee e) {
		return 0;
	}

	public String convertDate(Date date) {
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
				"yyyy-MM-dd");
		return sdf.format(date);
	}

	public String convertDateTime(Date date) {
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}

	public List<Employee> showEmployee(Employee employee) {
		String sql = "SELECT * FROM EMP_INFO where (RESOURCE_NO = ?) OR (EMP_ID = ?) OR (NAME = ?) OR (PRIMARY_SKILL = ?) OR (EXP = ?) OR (MAIN_SKILLS = ?) OR (SEC_SKILLS = ?) OR (ROLE = ?)";

		List<Employee> listEmployee = jdbcTemplate.query(sql,
				new Object[] { employee.getResourceNo(), employee.getEmpId(),
						employee.getEmpName(), employee.getPrimarySkill(),
						employee.getExperince(), employee.getMainSkill(),
						employee.getSecondarySkill(), employee.getEmpRole() },
				new RowMapper<Employee>() {
					public Employee mapRow(ResultSet rs, int rowNum)
							throws SQLException {

						Employee employeeRs = new Employee();
						employeeRs.setResourceNo(rs.getString("RESOURCE_NO"));
						employeeRs.setEmpId(rs.getInt("EMP_ID"));
						employeeRs.setEmpName(rs.getString("NAME"));
						employeeRs.setPrimarySkill(rs
								.getString("PRIMARY_SKILL"));
						employeeRs.setExperince(rs.getInt("EXP"));
						employeeRs.setSecondarySkill(rs.getString("SEC_SKILLS"));
						employeeRs.setMainSkill(rs.getString("MAIN_SKILLS"));
						employeeRs.setEmpRole(rs.getString("ROLE"));
						employeeRs.setLocation(rs.getString("LOCATION"));
						employeeRs.setPractise(rs.getString("PRACTICE"));
						employeeRs.setPsa(rs.getString("PSA"));
						employeeRs.setOverseas(rs.getString("OVERSEAS"));
						employeeRs.setReleaseDate(rs.getDate("RELEASE_DATE"));
						employeeRs.setContact(rs.getInt("CONTACT"));
						employeeRs.setLastProject(rs.getString("LAST_PROJ"));
						employeeRs.setInternalAssignment(rs.getString("INTERNAL_ASSGN"));
						employeeRs.setVertical(rs.getString("VERTICAL"));
						employeeRs.setPersonalDetail(rs.getString("PERSONAL_DETAILS"));
						employeeRs.setTraining(rs.getString("TRAINING"));
						employeeRs.setRemarks(rs.getString("REMARKS"));
						employeeRs.setLeaveStatus(rs.getString("LEAVE_STATUS"));
						employeeRs.setStatus(rs.getString("STATUS"));
						employeeRs.setLocationOfResidence(rs.getString("LOCATION_OF_RES"));
						employeeRs.setPassportStatus(rs.getString("PASSPORT_STATUS"));
						employeeRs.setOverallRating(rs.getString("OVERALL_COMM_RAITING"));
						employeeRs.setDateOfJoining(rs.getDate("DATE_OF_JOIN"));
						employeeRs.setVisa(rs.getString("VISA"));
						employeeRs.setBand(rs.getInt("BAND"));
						employeeRs.setPlan(rs.getString("PLAN"));
						employeeRs.setRole(rs.getString("TECH_ROLE"));
						employeeRs.setDesignation(rs.getString("DESIGNATION"));
						employeeRs.setEmail(rs.getString("EMAIL"));
						employeeRs.setSsa(rs.getInt("SSA"));
						employeeRs.setGender(rs.getString("GENDER"));
						employeeRs.setLevel(rs.getString("LEVEL"));
						employeeRs.setNoOfOpportunity(rs.getInt("OPPORTUNITY"));

						return employeeRs;
					}
				});
		return listEmployee;

	}
}