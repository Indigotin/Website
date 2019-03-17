package com.cqut.service;

import com.cqut.po.Course;

import java.util.List;

public interface courseService {

    //查询所有
    List<Course> findAllList();

    //添加课程
    boolean insertCourse(Course record);

    //删除课程
    boolean deleteCourse(Integer id);

    //修改课程
    boolean updateCourse(Course record);

    Course findByKey(Integer id);
}
