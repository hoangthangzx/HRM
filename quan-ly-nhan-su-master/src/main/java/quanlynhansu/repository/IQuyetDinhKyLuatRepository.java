package quanlynhansu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import quanlynhansu.model.entity.Quyetdinhkhenthuong;
import quanlynhansu.model.entity.Quyetdinhkyluat;

@Repository
public interface IQuyetDinhKyLuatRepository extends CrudRepository<Quyetdinhkyluat, Integer> {
	@Query("SELECT qdkl from Quyetdinhkyluat qdkl where qdkl.pk=:pk and qdkl.version=:version")
	Quyetdinhkyluat findOneByPkAndVersion(@Param("pk") Integer pk, @Param("version") Integer version);
	  @Query("SELECT qdkl FROM Quyetdinhkyluat qdkl WHERE qdkl.canbo.pk = :canBoPk")
	    List<Quyetdinhkyluat> findAllByCanBoPk(@Param("canBoPk") Integer canBoPk);
}