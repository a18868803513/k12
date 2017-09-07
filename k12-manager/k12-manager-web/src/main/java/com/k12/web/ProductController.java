package com.k12.web;

import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.domain.Tb_Product;
import com.k12.service.ProductService;
import com.k12.utils.Order;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;

/**
 * Created by dwy on 2017/9/4.
 */
@Controller
public class ProductController {
    @Autowired
    ProductService productService;


    @RequestMapping("productList")
    @ResponseBody
    public Page selectByPage(int page, int rows, String gid, String cid,Order order,int statusId,String name) throws UnsupportedEncodingException {
        name= new String(name.getBytes("ISO8859_1"),"utf-8");
        System.out.println(name+"---------");
        return productService.selectByPage(page, rows, gid, cid,order,statusId,name);
    }

    @RequestMapping("removeProduct")
    public String remove(String ids){
        String[] a=ids.split(",");
        List<String> list= Arrays.asList(a);
        list.forEach(n->productService.removeProduct(Integer.parseInt(n)));
        return "ManagerIndex";
    }
    @RequestMapping("upProduct")
    public String upProduct(String ids){
        String[] a=ids.split(",");
        List<String> list= Arrays.asList(a);
        list.forEach(n->productService.upProduct(Integer.parseInt(n)));
        return "ManagerIndex";
    }
    @RequestMapping("downProduct")
    public String downProduct(String ids){
        String[] a=ids.split(",");
        List<String> list= Arrays.asList(a);
        list.forEach(n->productService.downProduct(Integer.parseInt(n)));
        return "ManagerIndex";
    }


    @ModelAttribute("dir")
    public File pre(HttpServletRequest request){
        File dir=new File(new File(request.getServletContext().getRealPath("/")).getParent(),"my_images");
        if(!dir.exists()){
            dir.mkdirs();
        }
        return dir;
    }

    @RequestMapping("addProduct")
    public String addProduct(@RequestParam(name="file",required = false) MultipartFile mFile,@ModelAttribute("dir") File dir, Tb_Product product,int grade1,int course1) throws IOException {
        System.out.println("123");
        Tb_Grade tb_grade=new Tb_Grade();
        tb_grade.setId(grade1);
        Tb_Course tb_course=new Tb_Course();
        tb_course.setId(course1);
        if ((!mFile.isEmpty()) && (mFile.getSize() > 0L))
        {
            String fileName = mFile.getOriginalFilename();
            String fileName1 = System.currentTimeMillis() + "_" + fileName;
            File file = new File(dir, fileName1);
            mFile.transferTo(file);
            product.setImg(fileName1);
        }
        System.out.println(product);
        product.setTb_course(tb_course);
        product.setTb_grade(tb_grade);
        productService.addProduct(product);
        return "ManagerIndex";
    }

}
