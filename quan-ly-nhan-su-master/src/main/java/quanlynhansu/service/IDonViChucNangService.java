package quanlynhansu.service;

import java.util.ArrayList;
import java.util.Set;

import quanlynhansu.model.dto.CanBoDTO;
import quanlynhansu.model.dto.DonViChucNangDTO;
import quanlynhansu.model.dto.NgachCongChucDTO;

public interface IDonViChucNangService {
	public ArrayList<DonViChucNangDTO> getAll();

	public DonViChucNangDTO getById(Integer id);

	DonViChucNangDTO update(DonViChucNangDTO t);

	DonViChucNangDTO insert(DonViChucNangDTO t);

	Set<NgachCongChucDTO> getnganhcongchucByDonViChucNang(Integer donViChucNangPk);

	Set<CanBoDTO> getCanBoByDonViChucNang(Integer donViChucNangPk);

	void delete(Integer id, Integer version);

	
}
