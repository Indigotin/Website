package com.cqut.service;

import com.cqut.po.Article;

import java.util.List;

public interface articleService {

    //查询所有
    List<Article> findAllList();

    //上传文章
    boolean insertArticle(Article record);

    //删除文章
    boolean deleteArticle(Integer id);

    //修改文章
    boolean updateArticle(Article record);

    Article findByKey(Integer id);
}
