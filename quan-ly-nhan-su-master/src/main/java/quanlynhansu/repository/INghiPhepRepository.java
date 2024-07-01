package quanlynhansu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import quanlynhansu.model.entity.NghiPhep;
@Repository
public interface INghiPhepRepository extends CrudRepository<NghiPhep, Integer> {
	@Query("SELECT np from NghiPhep np where np.pk=:pk")
	NghiPhep findOneByPkAndVersion(@Param("pk") Integer pk);
	@Query("SELECT np FROM NghiPhep np WHERE np.canBo_pk = :canBo_pk")
	List<NghiPhep> findAllByCanBoPk(@Param("canBo_pk") Integer canBo_pk);

}
