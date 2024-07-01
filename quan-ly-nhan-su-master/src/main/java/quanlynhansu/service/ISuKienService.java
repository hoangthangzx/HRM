package quanlynhansu.service;

import java.util.ArrayList;

import quanlynhansu.model.dto.SuKienDTO;

public interface ISuKienService {

	ArrayList<SuKienDTO> getAll();

	void delete(Integer id);

	SuKienDTO getById(Integer id);

	SuKienDTO update(SuKienDTO t);

	SuKienDTO insert(SuKienDTO t);

}
