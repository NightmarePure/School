package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.DBManager;

public class userbean {
	public boolean ValidateUser(String userName,String userPwd){
		boolean res=false;
		Connection con=DBManager.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			ps=con.prepareStatement("select * from user where username=? and password=?");
			ps.setString(1, userName);
			ps.setString(2, userPwd);
			
			rs=ps.executeQuery();
			System.out.println("Prepared Statement就绪");
			if(rs.next())
				res=true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return res;
	}
	
	public boolean RegisterUser(String userName,String userPwd,String gender,boolean hobbyMovie,boolean hobbyCode,boolean hobbyGame,String userinfo){
		Connection con=DBManager.getConnection();
		PreparedStatement ps=null;
		int n=0;
		try {
			ps= con.prepareStatement
					("insert into user	(username,	password,	gender,	hobby_movie,	hobby_code,	hobby_games,	info) "
							+ "values	(?,			?,			?,		?,				?,			?,				?)");
			ps.setString(1, userName);
			ps.setString(2, userPwd);
			ps.setString(3, gender);
			ps.setBoolean(4, hobbyMovie);
			ps.setBoolean(5, hobbyCode);
			ps.setBoolean(6, hobbyGame);
			ps.setString(7, userinfo);
			
			n=ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(n>=1)
			return true;
		return false;
	}

	public boolean UpdateUserBasicInfo(String userName,String gender,boolean hobbyMovie,boolean hobbyCode,boolean hobbyGame,String userinfo){
		Connection con=DBManager.getConnection();
		PreparedStatement ps=null;
		int n=0;
		try {
			System.out.println(		"userName="+userName+"\n"
								+ 	"gender="+gender+"\n"
								+ 	"hobbyMovie="+hobbyMovie+"\n"
								+ 	"hobbycode"+hobbyCode+"\n"
								+ 	"hobbyGame="+hobbyGame+"\n"
								+ 	"userinfo="+userinfo+"\n");
			
			ps= con.prepareStatement
					("update user set gender=?,	hobby_movie=?,	hobby_code=?,	hobby_games=?,	info=? "
					+"where username=?");
			ps.setString(1, gender);
			ps.setBoolean(2, hobbyMovie);
			ps.setBoolean(3, hobbyCode);
			ps.setBoolean(4, hobbyGame);
			ps.setString(5, userinfo);

			ps.setString(6, userName);
			
			n=ps.executeUpdate();
			if(n>=1)
				System.out.println("更新操作执行成功,n="+n);
			else 
				System.out.println("n=0!");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(n>=1)
			return true;
		return false;
	}

	public UserDTO GetUserInfo(String username){
		Connection con=DBManager.getConnection();
		PreparedStatement ps=null;
		ResultSet rs = null;
		UserDTO udto=new UserDTO();
		int n=0;
		try {
			ps= con.prepareStatement("select * from user where username = ?");
			ps.setString(1, username);
			
			rs=ps.executeQuery();
			
			if(rs.next()){
				udto.setUsername(username);
				udto.setGender(rs.getString("gender"));
				udto.setHobbyMovie(rs.getBoolean("hobby_movie"));
				udto.setHobbycode(rs.getBoolean("hobby_code"));
				udto.setHobbyGames(rs.getBoolean("hobby_games"));
				udto.setInfo(rs.getString("info"));
				System.out.println(udto.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return udto;
	}
}
