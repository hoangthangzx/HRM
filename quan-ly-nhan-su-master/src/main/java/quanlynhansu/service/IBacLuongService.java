package quanlynhansu.service;

import java.util.ArrayList;

import quanlynhansu.model.dto.BacLuongDTO;

public interface IBacLuongService {
	BacLuongDTO getHeSoLuongById(Integer bacLuongPk);

	ArrayList<BacLuongDTO> getAll();

	void delete(Integer id);

	BacLuongDTO getById(Integer id);

	BacLuongDTO update(BacLuongDTO t);

	BacLuongDTO insert(BacLuongDTO t);
}
