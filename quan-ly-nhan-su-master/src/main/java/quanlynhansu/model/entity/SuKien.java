package quanlynhansu.model.entity;

import javax.persistence.*;

import java.io.Serializable;


@Entity
@NamedQuery(name = "SuKien.findAll", query = "SELECT sk FROM SuKien sk")
@Table(name = "suKien")
public class SuKien implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer pk;
    
    @Column(nullable = false)
    private String tenSuKien;
    
    @Column(length = 5000)
    private String moTa;
    
    @Column(nullable = false)
    private String ngayBatDau;
    
    @Column(nullable = false)
    private String ngayKetThuc;
    
    @Column(nullable = false)
    private String diaDiem;
    

	public Integer getPk() {
		return pk;
	}

	public void setPk(Integer pk) {
		this.pk = pk;
	}

	public String getTenSuKien() {
		return tenSuKien;
	}

	public void setTenSuKien(String tenSuKien) {
		this.tenSuKien = tenSuKien;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
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

	public String getDiaDiem() {
		return diaDiem;
	}

	public void setDiaDiem(String diaDiem) {
		this.diaDiem = diaDiem;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}



    // Getters and Setters
}
