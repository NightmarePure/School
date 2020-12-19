package beans;

public class UserDTO {
	private String username;
	private String password;
	private String gender;
	private boolean hobbyMovie;
	private boolean hobbycode;
	private boolean hobbyGames;
	private String info;
	
	public UserDTO(String username, String password, String gender,
			boolean hobbyMovie, boolean hobbycode, boolean hobbyGames,
			String info) {
		super();
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.hobbyMovie = hobbyMovie;
		this.hobbycode = hobbycode;
		this.hobbyGames = hobbyGames;
		this.info = info;
	}
	public UserDTO() {
		super();
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public boolean isHobbyMovie() {
		return hobbyMovie;
	}
	public void setHobbyMovie(boolean hobbyMovie) {
		this.hobbyMovie = hobbyMovie;
	}
	public boolean isHobbycode() {
		return hobbycode;
	}
	public void setHobbycode(boolean hobbycode) {
		this.hobbycode = hobbycode;
	}
	public boolean isHobbyGames() {
		return hobbyGames;
	}
	public void setHobbyGames(boolean hobbyGames) {
		this.hobbyGames = hobbyGames;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	@Override
	public String toString() {
		return "UserDTO [username=" + username + ", password=" + password
				+ ", gender=" + gender + ", hobbyMovie=" + hobbyMovie
				+ ", hobbycode=" + hobbycode + ", hobbyGames=" + hobbyGames
				+ ", info=" + info + "]";
	}
	
}
