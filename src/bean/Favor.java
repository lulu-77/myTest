package bean;

public class Favor {

	private Integer id;
	private Integer userId;
	private Integer typeId;
	private Integer click;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public  Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public Integer getClick() {
		return click;
	}

	public void setClick(Integer click) {
		this.click = click;
	}

	@Override
	public String toString() {
		return "Favor [id=" + id + ", userId=" + userId + ", typeId=" + typeId + ", click=" + click + "]";
	}
	
	public Favor() {
		super();
	}
	
	public Favor(Integer id, Integer userId, Integer typeId, Integer click) {
		super();
		this.id = id;
		this.userId = userId;
		this.typeId = typeId;
		this.click = click;
	}

}
