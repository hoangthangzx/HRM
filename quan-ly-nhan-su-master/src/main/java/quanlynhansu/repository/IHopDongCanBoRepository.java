package quanlynhansu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import quanlynhansu.model.entity.Hopdongcanbo;
import quanlynhansu.model.entity.NghiPhep;

@Repository
public interface IHopDongCanBoRepository extends CrudRepository<Hopdongcanbo, Integer> {
	@Query("SELECT hdcb from Hopdongcanbo hdcb where hdcb.pk=:pk and hdcb.version=:version")
	Hopdongcanbo findOneByPkAndVersion(@Param("pk") Integer pk, @Param("version") Integer version);
	@Query("SELECT hdcb FROM Hopdongcanbo hdcb WHERE hdcb.canbo.pk = :canBoPk")
    List<Hopdongcanbo> findAllByCanBoPk(@Param("canBoPk") Integer canBoPk);
}
