package quanlynhansu.service;

import java.util.ArrayList;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.OptimisticLockingFailureException;
import org.springframework.stereotype.Component;

import quanlynhansu.model.dto.SuKienDTO;
import quanlynhansu.model.entity.SuKien;
import quanlynhansu.repository.ISuKienRepository;
@Component
public class SuKienServiceImpl implements ISuKienService {
	@Autowired
	private ISuKienRepository repo;

	@Autowired
	protected DozerBeanMapper mapper;

	@Override
	public ArrayList<SuKienDTO> getAll() {
		ArrayList<SuKienDTO> ketqua = new ArrayList<>();

		Iterable<SuKien> listFromDb = repo.findAll();

		for (SuKien d : listFromDb) {
			ketqua.add(mapper.map(d, SuKienDTO.class));
		}
		return ketqua;
	}
	 
	@Override
	public void delete(Integer id) {
		SuKien entity = new SuKien();
		entity = repo.findOneByPkAndVersion(id);
		if (entity == null) {
			throw new OptimisticLockingFailureException(
					"Concurrent update error");
		}
		repo.delete(id);
	}

	@Override
	public SuKienDTO getById(Integer id) {
		SuKien entity = repo.findOne(id);
		return mapper.map(entity, SuKienDTO.class);
	}

	@Override
	public SuKienDTO update(SuKienDTO t) {
		addOrUpdate(t);
		return t;
	}

	@Override
	public SuKienDTO insert(SuKienDTO t) {
		addOrUpdate(t);
		return t;
	}

	private SuKien addOrUpdate(SuKienDTO dto) {
		SuKien entity = new SuKien();

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
