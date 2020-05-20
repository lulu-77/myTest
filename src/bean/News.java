package bean;

import java.util.Date;


public class News {

	private Integer id;
	private String author;
	private Date date;
	private String title;
	private String content;
	private String picture;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}


	@Override
	public String toString() {
		return "News [id=" + id + ", author=" + author + ", date=" + date + ", title=" + title + ", content=" + content
				+ ", picture=" + picture + "]";
	}

	public News() {
		super();
	}
	
	public News(int id, String author, Date date, String title, String content, String picture) {
		super();
		this.id = id;
		this.author = author;
		this.date = date;
		this.title = title;
		this.content = content;
		this.picture = picture;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		News other = (News) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}
