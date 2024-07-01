package quanlynhansu.model.dto;



public class NghiPhepDTO {
    private Integer pk;
    private Integer canBo_pk;
    private String ngayBatDau;
    private String ngayKetThuc;
    private String lyDo;
    private String trangThai ;
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
