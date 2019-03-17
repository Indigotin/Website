package com.cqut.service.impl;

import com.cqut.mapper.ArticleMapper;
import com.cqut.po.Article;
import com.cqut.po.ArticleExample;
import com.cqut.service.articleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class articleServiceImpl implements articleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public List<Article> findAllList() {

        return articleMapper.selectByExample(new ArticleExample());
    }

    @Override
    public boolean insertArticle(Article record) {

        if (articleMapper.insert(record) == 1)  //返回受影响行数
            return true;
        return false;
    }

    @Override
    public boolean deleteArticle(Integer id) {
        //不能为空
        if(id == null)
            return false;
        if(articleMapper.deleteByPrimaryKey(id) == 1)
            return true;
        return false;
    }

    @Override
    public boolean updateArticle(Article record) {
        if(articleMapper.updateByPrimaryKey(record) == 1)
            return true;
        return false;
    }

    @Override
    public Article findByKey(Integer id) {
        if(id == null)
            return null;
        return articleMapper.selectByPrimaryKey(id);
    }

}
