package quanlynhansu.service;

import java.util.ArrayList;
import java.util.List;

import quanlynhansu.model.dto.QuyetDinhKhenThuongDTO;

public interface IQuyetDinhKhenThuongService {
	public ArrayList<QuyetDinhKhenThuongDTO> getAll();

	void delete(Integer id, Integer version);

	public QuyetDinhKhenThuongDTO getById(Integer id);

	QuyetDinhKhenThuongDTO update(QuyetDinhKhenThuongDTO t);

	QuyetDinhKhenThuongDTO insert(QuyetDinhKhenThuongDTO t);
	 List<QuyetDinhKhenThuongDTO> getAllByCanBoPk(Integer canBoPk);
}
