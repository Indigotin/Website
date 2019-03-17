package com.cqut.service.impl;

import com.cqut.service.fileService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

@Service
public class fileServiceImpl implements fileService {

    public String upload(String path,MultipartFile file) throws IOException {

        // 原始的文件名
        String fileName = file.getOriginalFilename();
        // 扩展名
        String extName = fileName.substring(fileName.lastIndexOf("."));
        // 防止文件名冲突
        fileName = System.nanoTime() + extName;

        // 写文件到目录
        File dir = new File(path,fileName);
        if(!dir.exists()){
            dir.mkdirs();
        }
        //MultipartFile自带的解析方法
        file.transferTo(dir);
        return fileName;
    }

    public void down(String path,HttpServletResponse response,String file) throws Exception{

        //模拟文件为需要下载的文件
        String fileName = path + "\\" + file;
        System.out.println(fileName);


        //获取输入流
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));

        //转码，免得文件名中文乱码
        file = URLEncoder.encode(file,"UTF-8");

        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + file);

        //设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while((len = bis.read()) != -1){
            out.write(len);
            out.flush();
        }
        out.close();
    }

}
