package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import util.DBManager;

public class BoardDAO {
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<BoardDTO> board = null;
	
	public ArrayList<BoardDTO> getBoard(){
		this.board = new ArrayList<BoardDTO>();
		try {
			conn = DBManager.getConnection();
			String sql = "select * from board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String pw = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				Timestamp date = rs.getTimestamp(8);
				
				BoardDTO list = new BoardDTO(code,title,content,id,pw,view,like,date);
				this.board.add(list);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return this.board;
	}
	
	public void addContent(BoardDTO content) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into board(title,content,id,pw,date) value(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, content.getTitle());
			pstmt.setString(2, content.getContent());
			pstmt.setString(3, content.getId());
			pstmt.setString(4, content.getPw());
			pstmt.setTimestamp(5, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void UpdateContent(int code, BoardDTO content) {
		try {
			conn = DBManager.getConnection();
			String sql = "update board set title=?,content=?,date=? where code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, content.getTitle());
			pstmt.setString(2, content.getContent());
			pstmt.setTimestamp(3, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			pstmt.setInt(4, code);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public BoardDTO searchDTO(int code) {
		this.board = getBoard();
		
		for(BoardDTO e : this.board) {
			if(e.getCode() == code) {
				return e;
			}
		}
		return null;
	}
	
	public void increaseView(BoardDTO content) {
		try {
			content.setView(content.getView()+1);
			conn = DBManager.getConnection();
			String sql = "update board set view=? where code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, content.getView());
			pstmt.setInt(2, content.getCode());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void increaseLike(BoardDTO content) {
		try {
			content.setLike(content.getLike()+1);
			conn = DBManager.getConnection();
			String sql = "update board set `like`=? where code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, content.getLike());
			pstmt.setInt(2, content.getCode());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteData(int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "delete from board where code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, code);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
