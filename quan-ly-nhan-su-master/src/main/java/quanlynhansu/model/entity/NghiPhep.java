package quanlynhansu.model.entity;

import javax.persistence.*;

import java.io.Serializable;


@Entity
@Table(name = "nghiPhep")
@NamedQuery(name = "NghiPhep.findAll", query = "SELECT np FROM NghiPhep np")

public class NghiPhep implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer pk;
    
	 @Column(nullable = false)
	    private Integer canBo_pk;
    
    @Column(nullable = false)
    private String ngayBatDau;
    
    @Column(nullable = false)
    private String ngayKetThuc;
    
    @Column(nullable = false)
    private String lyDo;
    
    @Column(nullable = false)
    private String trangThai="Chờ Duyệt" ;
    
    @Column(nullable = false)
    private String ngayYeuCau;


	public Integer getPk() {
		return pk;
	}

	public void setPk(Integer pk) {
		this.pk = pk;
	}

	public Integer getCanBo_pk() {
		return canBo_pk;
	}

	public void setCanBo_pk(Integer canBo_pk) {
		this.canBo_pk = canBo_pk;
	}

	public String getNgayBatDau() {
		return ngayBatDau;
	}

	public void setNgayBatDau(String ngayBatDau) {
		this.ngayBatDau = ngayBatDau;
	}

	public String getNgayKetThuc() {
		return ngayKetThuc;
	}

	public void setNgayKetThuc(String ngayKetThuc) {
		this.ngayKetThuc = ngayKetThuc;
	}

	public String getLyDo() {
		return lyDo;
	}

	public void setLyDo(String lyDo) {
		this.lyDo = lyDo;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public String getNgayYeuCau() {
		return ngayYeuCau;
	}

	public void setNgayYeuCau(String ngayYeuCau) {
		this.ngayYeuCau = ngayYeuCau;
	}



	
}
