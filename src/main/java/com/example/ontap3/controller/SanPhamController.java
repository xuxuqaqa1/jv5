package com.example.ontap3.controller;

import com.example.ontap3.entity.LoaiSanPham;
import com.example.ontap3.entity.SanPham;
import com.example.ontap3.repository.LoaiSanPhamRepository;
import com.example.ontap3.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/san-pham")
public class SanPhamController {
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Autowired
    LoaiSanPhamRepository loaiSanPhamRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("ListSanPham", sanPhamRepository.findAll());
        return "san-pham/hien-thi";
    }
    @ModelAttribute("ListLoaiSP")
    List<LoaiSanPham> getListLoaiSP(){
       return loaiSanPhamRepository.findAll();
    }
    @GetMapping("/add")
    public  String addSanPham(SanPham sanPham){
        sanPhamRepository.save(sanPham);
        return "redirect:/san-pham/hien-thi";
    }
    @GetMapping("/delete")
    public String deletee(@RequestParam("id") Integer id){
        sanPhamRepository.deleteById(id);
        return "redirect:/san-pham/hien-thi";
    }
    @GetMapping("/detail/{id}")
    public String showDetail(Model model, @PathVariable("id") Integer id){
        model.addAttribute("sanPham", sanPhamRepository.findById(id).get());
        return "san-pham/detail";
    }


}
