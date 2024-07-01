package quanlynhansu.service;

import java.util.ArrayList;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.OptimisticLockingFailureException;
import org.springframework.stereotype.Component;

import quanlynhansu.model.dto.BacLuongDTO;
import quanlynhansu.model.entity.Bacluong;
import quanlynhansu.model.entity.Ngachcongchuc;
import quanlynhansu.repository.IBacLuongRepository;

@Component
public class BacLuongServiceImpl implements IBacLuongService{
	@Autowired
	private IBacLuongRepository repo;
	@Autowired
	protected DozerBeanMapper mapper;
	@Override
	public BacLuongDTO getHeSoLuongById(Integer bacLuongPk) {
		Bacluong bacLuongEntity = repo.findOne(bacLuongPk);
		BacLuongDTO bacLuongDto = mapper.map(bacLuongEntity, BacLuongDTO.class);
		return bacLuongDto;
	}
	@Override
	public ArrayList<BacLuongDTO> getAll() {
		ArrayList<BacLuongDTO> ketqua = new ArrayList<>();

		Iterable<Bacluong> listFromDb = repo.findAll();

		for (Bacluong d : listFromDb) {
			ketqua.add(mapper.map(d, BacLuongDTO.class));
		}
		return ketqua;
	}

	@Override
	public void delete(Integer id) {
		Bacluong entity = new Bacluong();
		entity = repo.findOneByPkAndVersion(id);
		if (entity == null) {
			throw new OptimisticLockingFailureException(
					"Concurrent update error");
		}
		repo.delete(id);
	}

	@Override
	public BacLuongDTO getById(Integer id) {
		Bacluong entity = repo.findOne(id);
		return mapper.map(entity, BacLuongDTO.class);
	}

	@Override
	public BacLuongDTO update(BacLuongDTO t) {
		addOrUpdate(t);
		return t;
	}

	@Override
	public BacLuongDTO insert(BacLuongDTO t) {
		addOrUpdate(t);
		return t;
	}

	private Bacluong addOrUpdate(BacLuongDTO dto) {
		Bacluong entity = new Bacluong();

		if (dto.getPk() != null && dto.getPk() != -1) {
			entity = repo.findOneByPkAndVersion(dto.getPk());
			if (entity == null) {
				throw new OptimisticLockingFailureException("Concurrent update error");
			}
		}
		mapper.map(dto, entity);
		return repo.save(entity);
	}
}
