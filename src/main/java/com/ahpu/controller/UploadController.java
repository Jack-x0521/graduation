package com.ahpu.controller;

import com.ahpu.entity.User;
import com.ahpu.service.RoleService;
import com.ahpu.service.UserService;
import com.ahpu.util.Result;
import com.ahpu.util.ResultResponse;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 图片上传
 */
@Controller
public class UploadController {
    public String result = "";
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;

    @PostMapping("/upload.do")
    @ResponseBody
    public ResultResponse upload(MultipartFile file) {
        String fileName = "";
        String s ="";
        try {
            fileName = file.getOriginalFilename();
            String[] split = fileName.split("\\\\");
            int length = split.length;
             s = split[length-1];
            String destFileName = "D://User/" + s;
            System.out.println(destFileName);
            File destFile = new File(destFileName);
            destFile.getParentFile().mkdirs();
            file.transferTo(destFile);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return Result.resuleError("上传失败," + e.getMessage());
        } catch (IOException e) {
            e.printStackTrace();
            return Result.resuleError("上传失败," + e.getMessage());
        }
        String url = "/image/"+ s ;
        return Result.resuleSuccess(url);
    }

    @PostMapping("/layeditUpload.do")
    @ResponseBody
    public Map<String, Object> layeditUpload(MultipartFile file) {
        String fileName = "";
        Map<String, Object> result = new HashMap<>();
        try {
            fileName = file.getOriginalFilename();
            String destFileName = "D://User/" + File.separator + fileName;
            System.out.println(destFileName);
            File destFile = new File(destFileName);
            destFile.getParentFile().mkdirs();
            file.transferTo(destFile);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            result.put("code", "10001");
            result.put("msg", e.getMessage());
            return result;
        } catch (IOException e) {
            e.printStackTrace();
            result.put("code", "10001");
            result.put("msg", e.getMessage());
            return result;
        }
        String url =  fileName;
        result.put("code", "0");
        Map<String, String> data = new HashMap<>();
        data.put("src", url);
        data.put("title", fileName);
        result.put("data", data);
        return result;
    }

    @PostMapping("/importantStudent.do")
    @ResponseBody
    public ResultResponse important(MultipartFile file) {
        String fileName = "";
        String destFileName = "";
        try {
            fileName = file.getOriginalFilename();
            destFileName = "D://User/" + File.separator + fileName;
            File destFile = new File(destFileName);
            destFile.getParentFile().mkdirs();
            file.transferTo(destFile);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return Result.resuleError("文件上传失败," + e.getMessage());
        } catch (IOException e) {
            e.printStackTrace();
            return Result.resuleError("文件上传失败," + e.getMessage());
        }
        boolean excel = false;
        try {
            excel = importExcel(destFileName, "2");
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (excel) {
            if (result.equals("")) {
                return Result.resuleSuccess(null, "全部导入");
            } else {
                String msg = result;
                result = "";
                return Result.resuleSuccess(null, msg);
            }

        }
        return Result.resuleError("失败");
    }

    @PostMapping("/importantTeacher.do")
    @ResponseBody
    public ResultResponse importantTeacher(MultipartFile file) {
        String fileName = "";
        String destFileName = "";
        try {
            fileName = file.getOriginalFilename();
            destFileName = "D://User/" + File.separator + fileName;
            File destFile = new File(destFileName);
            destFile.getParentFile().mkdirs();
            file.transferTo(destFile);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return Result.resuleError("文件上传失败," + e.getMessage());
        } catch (IOException e) {
            e.printStackTrace();
            return Result.resuleError("文件上传失败," + e.getMessage());
        }
        boolean excel = false;
        try {
            excel = importExcel(destFileName, "3");
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (excel) {
            if (result.equals("")) {
                return Result.resuleSuccess(null, "全部导入");
            } else {
                String msg = result;
                result = "";
                return Result.resuleSuccess(null, msg);
            }

        }
        return Result.resuleError("失败");
    }

    public boolean importExcel(String destFileName, String roldId) throws Exception {
        System.out.println(destFileName);
        String[] split = destFileName.split("\\.");
        if (split[1].equals("xlsx")) {
            XSSFWorkbook book = new XSSFWorkbook(new FileInputStream(ResourceUtils.getFile(destFileName)));
            XSSFSheet sheet = book.getSheetAt(0);
            for (int i = 0; i <= sheet.getLastRowNum(); i++) {
                User user = new User();
                XSSFRow row = sheet.getRow(i);
                //账户
                Cell cell0 = row.getCell(0);
                cell0.setCellType(Cell.CELL_TYPE_STRING);
                String userName = cell0.getStringCellValue();
                user.setUserName(userName);
                //姓名
                Cell cell1 = row.getCell(1);
                cell1.setCellType(Cell.CELL_TYPE_STRING);
                String realName = cell1.getStringCellValue();
                user.setRealName(realName);
                //性别
                Cell cell2 = row.getCell(2);
                cell2.setCellType(Cell.CELL_TYPE_STRING);
                String sex = cell2.getStringCellValue();
                user.setSex(sex);
                //手机
                Cell cell3 = row.getCell(3);
                cell3.setCellType(Cell.CELL_TYPE_STRING);
                String iphone = cell3.getStringCellValue();
                user.setIphone(iphone);
                //身份证
                Cell cell4 = row.getCell(4);
                cell4.setCellType(Cell.CELL_TYPE_STRING);
                String address = cell4.getStringCellValue();
                user.setAddress(address);
                Cell cell5 = row.getCell(5);
                cell5.setCellType(Cell.CELL_TYPE_STRING);
                String email = cell5.getStringCellValue();
                user.setEmail(email);
                user.setPlainPassword("123456");
                System.out.println(user);
                User checkUser = userService.getUserByUserName(user.getUserName());
                if (checkUser != null) {
                    result = result + "账号:" + row.getCell(0).getStringCellValue() + "已存在,";
                } else {
                    boolean insert = userService.insert(user);
                    roleService.allotRole(user.getId(), roldId);
                }
            }
        } else if (split[1].equals("xls")) {
            HSSFWorkbook hssfWorkbook = new HSSFWorkbook(new FileInputStream(ResourceUtils.getFile(destFileName)));
            HSSFSheet sheetAt = hssfWorkbook.getSheetAt(0);
            for (int i = 0; i <= sheetAt.getLastRowNum(); i++) {
                User user = new User();
                HSSFRow row = sheetAt.getRow(i);
                //账户
                Cell cell0 = row.getCell(0);
                cell0.setCellType(Cell.CELL_TYPE_STRING);
                String userName = cell0.getStringCellValue();
                user.setUserName(userName);
                //姓名
                Cell cell1 = row.getCell(1);
                cell1.setCellType(Cell.CELL_TYPE_STRING);
                String realName = cell1.getStringCellValue();
                user.setRealName(realName);
                //性别
                Cell cell2 = row.getCell(2);
                cell2.setCellType(Cell.CELL_TYPE_STRING);
                String sex = cell2.getStringCellValue();
                user.setSex(sex);
                //手机
                Cell cell3 = row.getCell(3);
                cell3.setCellType(Cell.CELL_TYPE_STRING);
                String iphone = cell3.getStringCellValue();
                user.setIphone(iphone);
                //身份证
                Cell cell4 = row.getCell(4);
                cell4.setCellType(Cell.CELL_TYPE_STRING);
                String address = cell4.getStringCellValue();
                user.setAddress(address);
                //
                Cell cell5 = row.getCell(5);
                cell5.setCellType(Cell.CELL_TYPE_STRING);
                String email = cell5.getStringCellValue();
                user.setEmail(email);
                user.setPlainPassword("123456");
                User checkUser = userService.getUserByUserName(user.getUserName());
                if (checkUser != null) {
                    result = result + "账号:" + row.getCell(0).getStringCellValue() + "已存在,";
                } else {
                    boolean insert = userService.insert(user);
                    roleService.allotRole(user.getId(), roldId);
                }
            }
        }

        return true;
    }
}
