package quanlynhansu.service;

import java.util.ArrayList;
import java.util.List;

import quanlynhansu.model.dto.QuyetDinhKyLuatDTO;

public interface IQuyetDinhKyLuatService {
	public ArrayList<QuyetDinhKyLuatDTO> getAll();

	void delete(Integer id, Integer version);

	public QuyetDinhKyLuatDTO getById(Integer id);

	QuyetDinhKyLuatDTO update(QuyetDinhKyLuatDTO t);

	QuyetDinhKyLuatDTO insert(QuyetDinhKyLuatDTO t);
	List<QuyetDinhKyLuatDTO> findAllByCanBoPk(Integer canBoPk); // Add this method
}
