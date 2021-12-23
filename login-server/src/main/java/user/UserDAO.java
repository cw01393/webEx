package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

public class UserDAO {
	// Data Access Object
	// ㄴ 데이터베이스에 대한 접근처리
	
	// 1. 싱글톤 패턴으로 만들기
	private UserDAO() {}
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstance(){
		return instance;
	}
	
	// 2. 데이터베이스 연동 준비
	private Connection conn = null;			// db에 연결을 함
	private PreparedStatement pstmt = null;	// sql쿼리를 excute처리
	private ResultSet rs = null;			// 쿼리실행 결과물을 받는 역할
	
	private ArrayList<UserDTO> users = null;

	// 3. DB연동하기
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/loginServer?Timezone=UTC";
			String user = "root";
			String password = "dr3047";
			conn = DriverManager.getConnection(url, user, password);
			
			if(conn != null)
				System.out.println("연동성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	// 4. 연동된 Db에서 데이터 불러오기
	public ArrayList<UserDTO> getUsers(){
		this.users = new ArrayList<UserDTO>();
		
		try {
			conn = getConnection();				// DB연동하기
			String sql = "select * from users";
			pstmt = conn.prepareStatement(sql);	// 연동된 DB에 쿼리를 날릴 준비
			rs = pstmt.executeQuery();			// 쿼리를 날리면서 resultSet을 받음
			
			while(rs.next()) {
				int code = rs.getInt(1); // sql은 0이 아니라 1부터 시작
				String id = rs.getString(2);
				String pw = rs.getString(3);
				Timestamp regDate = rs.getTimestamp(4);
				
				UserDTO user = new UserDTO(code, id, pw, regDate);
				this.users.add(user);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return this.users;
	}
	
	// 5. CRUD
	// ㄴ Create Read Update Delete
	
	public void addUser(UserDTO user) {
		if(!checkDup(user)) {
			try {
				conn = getConnection();
				String sql = "insert into users(id, pw, regDate) values(?, ?, ?)"; // ?는 sql 쿼리의 포맷
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user.getId());
				pstmt.setString(2, user.getPw());
				pstmt.setTimestamp(3, new Timestamp(Calendar.getInstance().getTimeInMillis()));
				
				pstmt.executeUpdate();
				System.out.println("추가되었습니다");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public boolean checkDup(UserDTO user) {
		try {
			String id = user.getId();
			users = getUsers();
			
			for(UserDTO u : users) {
				if(id.equals(u.getId())) {
					return true;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public int login(String id, String pw) {
		try {
			users = getUsers();
			
			for(UserDTO user : users) {
				if(id.equals(user.getId()) && pw.equals(user.getPw())) {
					return user.getCode();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
