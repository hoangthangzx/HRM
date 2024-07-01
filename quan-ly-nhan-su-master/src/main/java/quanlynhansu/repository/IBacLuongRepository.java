package quanlynhansu.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import quanlynhansu.model.entity.Bacluong;


@Repository
public interface IBacLuongRepository extends CrudRepository<Bacluong, Integer> {
	@Query("SELECT bl from Bacluong bl where bl.pk=:pk")
	Bacluong findOneByPkAndVersion(@Param("pk") Integer pk);
//	Optional<Bacluong> findById(Integer id);

}
