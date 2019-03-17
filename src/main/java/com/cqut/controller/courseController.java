package com.cqut.controller;

import com.cqut.po.Course;
import com.cqut.service.courseService;
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
import java.util.List;

@Controller
public class courseController {

    @Autowired
    private courseService courseService;
    @Autowired
    private fileService fileService;

    private String path = "D:\\WebsiteWareHouse\\Course";


    @RequestMapping(value = "/showCourse")
    public ModelAndView courseList(){

        List<Course> courseList = courseService.findAllList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("courseList",courseList);

        modelAndView.setViewName("courseList");
        return modelAndView;
    }

    @RequestMapping("/editCoursePre")
    public String editPre(Model model, Integer id){

        Course course = courseService.findByKey(id);
        model.addAttribute("course",course);
        return "editCourse";
    }

    @RequestMapping("/editCourse")
    public String edit(Course course,@RequestParam("fileTemp")MultipartFile fileTemp) throws IOException {

        String fileName = fileService.upload(path,fileTemp);
        course.setResourceFile(fileName);
        courseService.updateCourse(course);
        return "redirect:showCourse";
    }

    @RequestMapping("/delCourse")
    public String del(Integer id){

        if(courseService.deleteCourse(id));
            //out.print("<script>alert('删除成功！');window.location='showList';</script>");
        else;
        //
        return "redirect:showCourse";
    }

    @RequestMapping("/showAddCoursePage")
    public String showPage(){

        return "addCourse";
    }

    @RequestMapping("/addCourse")
    public String addCourse(Course course, @RequestParam("fileTemp")MultipartFile fileTemp) throws IOException {

        String fileName = fileService.upload(path,fileTemp);
        course.setResourceFile(fileName);
        courseService.insertCourse(course);
        return "redirect:showCourse";
    }

    @RequestMapping("/downCourseRes")
    public void downResource(HttpServletResponse response,Integer id) throws Exception {

        Course course = courseService.findByKey(id);
        fileService.down(path,response,course.getResourceFile());

    }

}
