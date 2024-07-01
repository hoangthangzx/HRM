package quanlynhansu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.OptimisticLockingFailureException;
import org.springframework.stereotype.Component;

import quanlynhansu.model.dto.NghiPhepDTO;
import quanlynhansu.model.dto.SuKienDTO;
import quanlynhansu.model.entity.NghiPhep;
import quanlynhansu.model.entity.SuKien;
import quanlynhansu.repository.INghiPhepRepository;

@Component
public class NghiPhepServiceImpl implements INghiPhepService{
	@Autowired
	private INghiPhepRepository repo;
	@Autowired
	protected DozerBeanMapper mapper;
	
	@Override
	public ArrayList<NghiPhepDTO> getAll() {
		ArrayList<NghiPhepDTO> ketqua = new ArrayList<>();

		Iterable<NghiPhep> listFromDb = repo.findAll();

		for (NghiPhep d : listFromDb) {
			ketqua.add(mapper.map(d, NghiPhepDTO.class));
		}
		return ketqua;
	}

	@Override
	public void delete(Integer id) {
		NghiPhep entity = new NghiPhep();
		entity = repo.findOneByPkAndVersion(id);
		if (entity == null) {
			throw new OptimisticLockingFailureException(
					"Concurrent update error");
		}
		repo.delete(id);
	}

	@Override
	public NghiPhepDTO getById(Integer id) {
		NghiPhep entity = repo.findOne(id);
		return mapper.map(entity, NghiPhepDTO.class);
	}
	@Override
	public List<NghiPhepDTO> getAllByPk(Integer canBo_pk) {
	    List<NghiPhep> entities = repo.findAllByCanBoPk(canBo_pk);
	    return entities.stream()
	                   .map(entity -> mapper.map(entity, NghiPhepDTO.class))
	                   .collect(Collectors.toList());
	}

	@Override
	public NghiPhepDTO update(NghiPhepDTO t) {
		addOrUpdate(t);
		return t;
	}

	@Override
	public NghiPhepDTO insert(NghiPhepDTO t) {
		addOrUpdate(t);
		return t;
	}

	private NghiPhep addOrUpdate(NghiPhepDTO dto) {
		NghiPhep entity = new NghiPhep();

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
