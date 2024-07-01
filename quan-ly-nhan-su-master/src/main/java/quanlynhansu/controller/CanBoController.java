package quanlynhansu.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import quanlynhansu.model.dto.CanBoDTO;
import quanlynhansu.model.dto.ChucVuDTO;
import quanlynhansu.model.dto.DanTocDTO;
import quanlynhansu.model.dto.DonViChucNangDTO;
import quanlynhansu.model.dto.NgachCongChucDTO;
import quanlynhansu.model.dto.QueQuanDTO;
import quanlynhansu.model.dto.TonGiaoDTO;
import quanlynhansu.service.ICanBoService;
import quanlynhansu.service.IChucVuService;
import quanlynhansu.service.IDanTocService;
import quanlynhansu.service.IDonViChucNangService;
import quanlynhansu.service.INgachCongChucService;
import quanlynhansu.service.IQueQuanService;
import quanlynhansu.service.ITonGiaoService;
@Controller
@RequestMapping("/canBoController")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class CanBoController {
	@Autowired
	private ICanBoService canBoService;
	@Autowired
	private IDonViChucNangService donViChucNangService;
	@Autowired
	private ITonGiaoService tonGiaoService;
	@Autowired
	private IDanTocService danTocService;
	@Autowired
	private IChucVuService chucVuService;
	@Autowired
	private IQueQuanService queQuanService;
	@Autowired
	private INgachCongChucService ngachCongChucService;

	@GetMapping("/show")
	public ModelAndView getdata(HttpServletRequest request) {
		org.springframework.security.core.Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

	    // Retrieve authorities
	    List<String> authorities = authentication.getAuthorities().stream()
	            .map(GrantedAuthority::getAuthority)
	            .collect(Collectors.toList());

	    // Retrieve roles (assuming roles are prefixed with "ROLE_")
	    List<String> roles = authentication.getAuthorities().stream()
	            .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
	            .map(auth -> auth.getAuthority().substring(5)) // Remove "ROLE_" prefix
	            .collect(Collectors.toList());
	    // Retrieve other lists and add them to the model
	    ArrayList<DonViChucNangDTO> list = donViChucNangService.getAll();
	    ArrayList<TonGiaoDTO> tonGiaoLists = tonGiaoService.getAll();
	    ArrayList<DanTocDTO> danTocLists = danTocService.getAll();
	    ArrayList<ChucVuDTO> chucVuLists = chucVuService.getAll();
	    ArrayList<NgachCongChucDTO> ngachCongChucLists = ngachCongChucService.getAll();
	    ArrayList<QueQuanDTO> queQuanLists = queQuanService.getAll();
	        request.getSession().setAttribute("authorities", authorities);
	    request.getSession().setAttribute("roles", roles);
	    // Create ModelAndView object and add attributes
	    ModelAndView model = new ModelAndView("canbo");
	    model.addObject("donViChucNangLists", list);
	    model.addObject("tonGiaoLists", tonGiaoLists);
	    model.addObject("danTocLists", danTocLists);
	    model.addObject("chucVuLists", chucVuLists);
	    model.addObject("ngachCongChucLists", ngachCongChucLists);
	    model.addObject("queQuanLists", queQuanLists);
	
	    return model;
	}
	@GetMapping("/nhanvien")
	public ModelAndView getdata11(HttpServletRequest request) {
		org.springframework.security.core.Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

	    // Retrieve authorities
	    List<String> authorities = authentication.getAuthorities().stream()
	            .map(GrantedAuthority::getAuthority)
	            .collect(Collectors.toList());

	    // Retrieve roles (assuming roles are prefixed with "ROLE_")
	    List<String> roles = authentication.getAuthorities().stream()
	            .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
	            .map(auth -> auth.getAuthority().substring(5)) // Remove "ROLE_" prefix
	            .collect(Collectors.toList());
	    // Retrieve other lists and add them to the model
	    ArrayList<DonViChucNangDTO> list = donViChucNangService.getAll();
	    ArrayList<TonGiaoDTO> tonGiaoLists = tonGiaoService.getAll();
	    ArrayList<DanTocDTO> danTocLists = danTocService.getAll();
	    ArrayList<ChucVuDTO> chucVuLists = chucVuService.getAll();
	    ArrayList<NgachCongChucDTO> ngachCongChucLists = ngachCongChucService.getAll();
	    ArrayList<QueQuanDTO> queQuanLists = queQuanService.getAll();
	        request.getSession().setAttribute("authorities", authorities);
	    request.getSession().setAttribute("roles", roles);
	    // Create ModelAndView object and add attributes
	    ModelAndView model = new ModelAndView("home");
	    model.addObject("donViChucNangLists", list);
	    model.addObject("tonGiaoLists", tonGiaoLists);
	    model.addObject("danTocLists", danTocLists);
	    model.addObject("chucVuLists", chucVuLists);
	    model.addObject("ngachCongChucLists", ngachCongChucLists);
	    model.addObject("queQuanLists", queQuanLists);
	
	    return model;}
	@RequestMapping(value = "/delete/{pK}", method = RequestMethod.DELETE)
	public String delete(@PathVariable(value = "pK") Integer pK) {
		canBoService.delete(pK);
		return "canbo";
	}
	@GetMapping("/nv")
	public ModelAndView getdata1(HttpServletRequest request) {
		org.springframework.security.core.Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

	    // Retrieve authorities
	    List<String> authorities = authentication.getAuthorities().stream()
	            .map(GrantedAuthority::getAuthority)
	            .collect(Collectors.toList());

	    // Retrieve roles (assuming roles are prefixed with "ROLE_")
	    List<String> roles = authentication.getAuthorities().stream()
	            .filter(auth -> auth.getAuthority().startsWith("ROLE_"))
	            .map(auth -> auth.getAuthority().substring(5)) // Remove "ROLE_" prefix
	            .collect(Collectors.toList());
	    // Retrieve other lists and add them to the model
	    ArrayList<DonViChucNangDTO> list = donViChucNangService.getAll();
	    ArrayList<TonGiaoDTO> tonGiaoLists = tonGiaoService.getAll();
	    ArrayList<DanTocDTO> danTocLists = danTocService.getAll();
	    ArrayList<ChucVuDTO> chucVuLists = chucVuService.getAll();
	    ArrayList<NgachCongChucDTO> ngachCongChucLists = ngachCongChucService.getAll();
	    ArrayList<QueQuanDTO> queQuanLists = queQuanService.getAll();
	        request.getSession().setAttribute("authorities", authorities);
	    request.getSession().setAttribute("roles", roles);
	    // Create ModelAndView object and add attributes
	    ModelAndView model = new ModelAndView("nhanvien");
	    model.addObject("donViChucNangLists", list);
	    model.addObject("tonGiaoLists", tonGiaoLists);
	    model.addObject("danTocLists", danTocLists);
	    model.addObject("chucVuLists", chucVuLists);
	    model.addObject("ngachCongChucLists", ngachCongChucLists);
	    model.addObject("queQuanLists", queQuanLists);
	
	    return model;
	}

	@PostMapping("/update")
	public String update(@RequestBody CanBoDTO dscb, Model model) throws SQLException {
		canBoService.update(dscb);
		return "canbo";
	}

	@PostMapping("/add")
	public String insert(@RequestBody CanBoDTO dscb, Model model) throws SQLException {
		canBoService.insert(dscb);
		return "canbo";
	}
}