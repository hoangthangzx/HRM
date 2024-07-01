package quanlynhansu.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import quanlynhansu.model.entity.SuKien;
@Repository
public interface ISuKienRepository extends CrudRepository<SuKien, Integer> {
	@Query("SELECT sk from SuKien sk where sk.pk=:pk")
	SuKien findOneByPkAndVersion(@Param("pk") Integer pk);
}