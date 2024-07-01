package quanlynhansu.service;

import java.util.ArrayList;

import quanlynhansu.model.dto.NgachCongChucDTO;

public interface INgachCongChucService {
	public ArrayList<NgachCongChucDTO> getAll();

	void delete(Integer id, Integer version);

	public NgachCongChucDTO getById(Integer id);

	NgachCongChucDTO update(NgachCongChucDTO t);

	NgachCongChucDTO insert(NgachCongChucDTO t);

	NgachCongChucDTO getNgachCongChucById(Integer ngachCongChucPk);
	 
}
