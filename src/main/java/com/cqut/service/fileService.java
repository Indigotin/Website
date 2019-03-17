package com.cqut.service;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface fileService {

    /**
     * 写入文件并得到文件路径
     * @param file
     * @param path
     * @throws IOException
     */
    String upload(String path,MultipartFile file) throws IOException;

    /**
     * 文件下载功能
     * @param response
     * @throws Exception
     */
    @RequestMapping("/down")
    void down(String path,HttpServletResponse response,String file) throws Exception;
}
