package com.elgin.utils;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public class SheetManager {
    private final int FIRST_ROW_NO = 3;
    private final int FIRST_COLUMN_NO =1;
    private final int FIRST_SHEET_NO = 0;

    public ArrayList<HashMap<String,Object>> readExcel(File remoteFile){
        try {
            OPCPackage  pkg = OPCPackage.open(remoteFile);
            XSSFWorkbook xssfWorkbook = new XSSFWorkbook(pkg);
            DataFormatter dataFormatter = new DataFormatter();
            XSSFFormulaEvaluator xssfFormulaEvaluator = new XSSFFormulaEvaluator(xssfWorkbook);
            String cellString = null;
            ArrayList<HashMap<String,Object>> hashMapArrayList = new ArrayList<HashMap<String, Object>>();
            HashMap<String,Object> hashMap = new HashMap<String, Object>();
            for(int i=FIRST_SHEET_NO;i<xssfWorkbook.getNumberOfSheets();i++){
                Sheet sheet = xssfWorkbook.getSheetAt(i);
                for (int rowNum = FIRST_ROW_NO; rowNum <= sheet.getLastRowNum(); rowNum++) {
                    Row row = sheet.getRow(rowNum);
                    if (row == null) {
                        // This whole row is empty
                        // Handle it as needed
                        continue;
                    }
                    String applicant_name = row.getCell(1).getStringCellValue();
                    hashMap.put("applicant_name",row.getCell(1).getStringCellValue());
                    hashMap.put("product_name",row.getCell(2).getStringCellValue());
                    hashMap.put("applicantion_number",row.getCell(3).getStringCellValue());
                    hashMap.put("certificate_expire_date",row.getCell(4).getDateCellValue().getTime());
                    hashMapArrayList.add(hashMap);
                    return hashMapArrayList;
                    /*for (int colNum = FIRST_COLUMN_NO; colNum < row.getLastCellNum(); colNum++) {
                        //CellReference cellReference = new CellReference(rowNum,colNum);
                        Cell cell = row.getCell(colNum);
                        switch (cell.getCellTypeEnum()){
                            case NUMERIC:
                                Date date = cell.getDateCellValue();
                                Long timeLong = date.getTime();
                                System.out.println("date.getTime() is:"+timeLong);
                                System.out.println("------------------application_number,product_name,applicant_name,certificate_expire_date------------------------------------------------------");
                                hashMap.put("certificate_expire_date",timeLong);
                                //System.out.println("cell.getDateCellValue():"+cell.getDateCellValue());
                            break;
                            case STRING:
                                cellString = dataFormatter.formatCellValue(cell);
                                System.out.println("cellString is :"+cellString);
                                break;

                            default:
                                continue;
                        }

                    }*/
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


    public static void main(String[] args){
        SheetManager sheetManager = new SheetManager();
        sheetManager.readExcel(new File("/home/bearer/IdeaProjects/ssm_first/naifen/婴幼儿配方乳粉产品配方目录信息（2017年8月11日）.xlsx"));
    }

}
