package quanlynhansu.repository;

import java.util.Optional;
import java.util.Set;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import quanlynhansu.model.dto.CanBoDTO;
import quanlynhansu.model.entity.Canbo;

@Repository
public interface ICanBoRepository extends CrudRepository<Canbo, Integer> {
	@Query("select cb from Canbo cb where cb.pk=:pk")
	Canbo findOneByPkAndVersion(@Param("pk") Integer pk);

	@Query("select cb from Canbo cb where cb.gioiTinh=:cbGioiTinhs")
	Set<Canbo> findByGioiTinh(@Param("cbGioiTinhs") String cbGioiTinhs);

	@Query("select cb from Canbo cb where cb.dantoc.pk=:cbDanTocs")
	Set<Canbo> findByDanToc(@Param("cbDanTocs") Integer cbDanTocs);
	
	@Query("select cb from Canbo cb where cb.tongiao.pk=:cbTonGiaos")
	Set<Canbo> findByTonGiao(@Param("cbTonGiaos") Integer cbTonGiaos);
	
	@Query("select cb from Canbo cb where cb.chucvu.pk=:cbChucVus")
	Set<Canbo> findByChucVu(@Param("cbChucVus") Integer cbChucVus);
	
	@Query("select cb from Canbo cb where cb.chucDanh=:chucDanh")
	Set<Canbo> findByChucDanh(@Param("chucDanh") String chucDanh);
	
	@Query("select cb from Canbo cb where cb.donvichucnang.pk=:cbDonViChucNangs And cb.ngachcongchuc.pk=:cbnganhcongchucs")
	Set<Canbo> findByDonVinganhcongchuc(@Param("cbDonViChucNangs") Integer cbDonViChucNangs, @Param("cbnganhcongchucs") Integer cbnganhcongchucs);
	
	@Query("select cb from Canbo cb where cb.quequan.pk=:cbQueQuans")
	Set<Canbo> findByQueQuan(@Param("cbQueQuans") Integer cbQueQuans);
	
	@Query("select cb from Canbo cb where cb.ngachcongchuc.pk=:cbNgachCongChucs")
	Set<Canbo> findByNgachCongChuc(@Param("cbNgachCongChucs") Integer cbNgachCongChucs);
	
	@Query("select cb from Canbo cb where cb.donvichucnang.pk=:txtDonViChucNangs")
	Set<Canbo> findByDonViChucNang(@Param("txtDonViChucNangs") Integer txtDonViChucNangs);
    @Query("select cb from Canbo cb where cb.ten=:ten")
    Canbo findByTen(@Param("ten") String ten);

    @Query("select cb from Canbo cb where cb.soHieu=:soHieu")
    Set<Canbo> findBySoHieu(@Param("soHieu") String soHieu);
    @Query("select cb from Canbo cb where cb.pk=:pk")
	Optional<Canbo> findById(Integer pk);

}
