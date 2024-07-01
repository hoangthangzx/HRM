package quanlynhansu.service;

import java.util.ArrayList;
import java.util.List;

import quanlynhansu.model.dto.HopDongCanBoDTO;

public interface IHopDongCanBoService {
	ArrayList<HopDongCanBoDTO> getAll();

	void delete(Integer id, Integer version);

	HopDongCanBoDTO getById(Integer id);

	HopDongCanBoDTO update(HopDongCanBoDTO t);

	HopDongCanBoDTO insert(HopDongCanBoDTO t);

	List<HopDongCanBoDTO> getAllByPk(Integer canBoHdcn_pk );
}
