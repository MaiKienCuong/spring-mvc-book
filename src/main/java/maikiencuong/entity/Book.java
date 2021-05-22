package maikiencuong.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name", columnDefinition = "nvarchar(255)")
	@NotBlank(message = "Tên sách không được để trống")
	private String name;

	@Column(name = "author", columnDefinition = "nvarchar(255)")
	@NotBlank(message = "Tên tác giả không được để trống")
	private String author;

	@NotNull(message = "Năm xuất bản không được để trống")
	@Min(value = 1800, message = "Năm xuất bản phải sau năm 1800")
	@Max(value = 2021, message = "Năm xuất bản phải trước năm hiện tại")
	private Integer publishYear;

	@Min(value = 0, message = "Điểm đánh giá phải lớn hơn 0")
	@Max(value = 10, message = "Điểm đánh giá phải nhỏ hơn 10")
	@NotNull(message = "Điểm đánh giá không được để trống")
	private Float rating;

	@Column(columnDefinition = "nvarchar(max)")
	private String image;

}
