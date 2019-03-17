package com.cqut.service.impl;

import com.cqut.mapper.CourseMapper;
import com.cqut.po.Course;
import com.cqut.po.CourseExample;
import com.cqut.service.courseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class courseServiceImpl implements courseService {

    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Course> findAllList() {
        return courseMapper.selectByExample(new CourseExample());
    }

    @Override
    public boolean insertCourse(Course record) {
        if(courseMapper.insert(record) == 1)
            return true;
        return false;
    }

    @Override
    public boolean deleteCourse(Integer id) {
        if(id == null)
            return false;
        if(courseMapper.deleteByPrimaryKey(id) == 1)
            return true;
        return false;
    }

    @Override
    public boolean updateCourse(Course record) {
        if(courseMapper.updateByPrimaryKey(record) == 1)
            return true;
        return false;
    }

    @Override
    public Course findByKey(Integer id) {
        if(id == null)
            return null;
        return courseMapper.selectByPrimaryKey(id);
    }
}
