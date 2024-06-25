package productlistingapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Productlist")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="productId")
	private int pId;
	private String name;

	private String description;

	private long price;
	

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int pId, String name, String description, long price) {
		super();
		this.pId = pId;
		this.name = name;
		this.description = description;
		this.price = price;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Product [pId=" + pId + ", name=" + name + ", description=" + description + ", price=" + price + "]";
	}

}
