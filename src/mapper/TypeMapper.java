package mapper;

import org.apache.ibatis.annotations.Param;

import bean.Type;

public interface TypeMapper {
	Type getTypeById(
			@Param("id")Integer id);
}
