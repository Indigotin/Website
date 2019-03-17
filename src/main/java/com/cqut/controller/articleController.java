package com.cqut.controller;

import com.cqut.po.Article;
import com.cqut.service.articleService;
import com.cqut.service.fileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class articleController {

    @Autowired
    private articleService articleService;
    @Autowired
    private fileService fileService;
    private String path = "D:\\WebsiteWareHouse\\Article";

    @RequestMapping(value = "/showArticle")
    public ModelAndView articleList(){

        List<Article> articleList = articleService.findAllList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("articleList",articleList);

        //指定逻辑视图名articleList.jsp
        modelAndView.setViewName("articleList");
        return modelAndView;
    }

    @RequestMapping("/editArticlePre")
    public String editPre(Model model, Integer id){

        Article article = articleService.findByKey(id);
        model.addAttribute("article",article);
        return "editArticle";
    }

    @RequestMapping("/editArticle")
    public String edit(Article article,@RequestParam("fileTemp")MultipartFile fileTemp) throws IOException {

        String fileName = fileService.upload(path,fileTemp);
        article.setFile(fileName);
        article.setCreateDate(new Date());
        articleService.updateArticle(article);

        return "redirect:showArticle";
    }

    @RequestMapping("/delArticle")
    public String del(Integer id){

        if(articleService.deleteArticle(id));
            //out.print("<script>alert('删除成功！');window.location='showList';</script>");
        else;
        //
        return "redirect:showArticle";
    }

    @RequestMapping("/showAddArticlePage")
    public String showAdd(){
        return "addArticle";
    }

    @RequestMapping("/addArticle")
    public String add(Article article,@RequestParam("fileTemp")MultipartFile fileTemp) throws IOException {

        article.setCreateDate(new Date());
        String fileName = fileService.upload(path,fileTemp);
        article.setFile(fileName);
        articleService.insertArticle(article);
        return "redirect:showArticle";
    }

    @RequestMapping("/downArticle")
    public void downArticle(HttpServletResponse response, Integer id) throws Exception {

        Article article = articleService.findByKey(id);
        fileService.down(path,response,article.getFile());

    }
}
