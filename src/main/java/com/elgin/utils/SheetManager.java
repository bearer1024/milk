package com.elgin.utils;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.*;

public class SheetManager {

    public static String readExcel(File remoteFile){
        try {
            OPCPackage  pkg = OPCPackage.open(remoteFile);
            XSSFWorkbook xssfWorkbook = new XSSFWorkbook(pkg);
            for(int i=0;i<xssfWorkbook.getNumberOfSheets();i++){
                Sheet sheet = xssfWorkbook.getSheetAt(i);
                System.out.println(xssfWorkbook.getSheetName(i));
                for(Row row : sheet){
                    System.out.println("rownum:" + row.getRowNum());
                    for (Cell cell: row){
                        System.out.println("cell:"+cell);
                    }
                }

            }
            pkg.close();
        } catch (InvalidFormatException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

}
