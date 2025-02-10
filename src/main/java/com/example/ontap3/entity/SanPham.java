package com.example.ontap3.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "san_pham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "mota")
    private String mota;

    @Column(name = "website")
    private String website;

    @Column(name = "gia_ban")
    private String gia_ban;

    @Column(name = "so_luong")
    private int so_luong;

    @Column(name = "trang_thai")
    private boolean trang_thai;

    @ManyToOne
    @JoinColumn(name = "id_loai_sp", referencedColumnName = "id")
    private LoaiSanPham loaiSanPham;
}
