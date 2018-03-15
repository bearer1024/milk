package com.elgin.utils;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Map;

public class SheetManager {
    private final int FIRST_ROW_NO = 3;
    private final int FIRST_COLUMN_NO =1;
    private final int FIRST_SHEET_NO = 0;

    public String readExcel(File remoteFile){
        try {
            OPCPackage  pkg = OPCPackage.open(remoteFile);
            XSSFWorkbook xssfWorkbook = new XSSFWorkbook(pkg);
            DataFormatter dataFormatter = new DataFormatter();
            XSSFFormulaEvaluator xssfFormulaEvaluator = new XSSFFormulaEvaluator(xssfWorkbook);
            String cellString = null;
            for(int i=FIRST_SHEET_NO;i<xssfWorkbook.getNumberOfSheets();i++){
                Sheet sheet = xssfWorkbook.getSheetAt(i);
                //System.out.println(xssfWorkbook.getSheetName(i));
                /*for(Row row : sheet){
                    System.out.println("rownum:" + row.getRowNum());
                    for (Cell cell: row){
                        System.out.println("cell:"+cell);
                    }
                }*/
                for (int rowNum = FIRST_ROW_NO; rowNum <= sheet.getLastRowNum(); rowNum++) {
                    Row row = sheet.getRow(rowNum);
                    if (row == null) {
                        // This whole row is empty
                        // Handle it as needed
                        continue;
                    }
                    for (int colNum = FIRST_COLUMN_NO; colNum < row.getLastCellNum(); colNum++) {
                        //CellReference cellReference = new CellReference(rowNum,colNum);
                        Cell cell = row.getCell(colNum);
                        switch (cell.getCellTypeEnum()){
                            case NUMERIC:
                                System.out.println("cell.getDateCellValue():"+cell.getDateCellValue());
                            break;
                            case STRING:
                                cellString = dataFormatter.formatCellValue(cell);
                                System.out.println("cellString is :"+cellString);
                                break;
                            default:
                                continue;
                        }

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


    public static void main(String[] args){
        SheetManager sheetManager = new SheetManager();
        sheetManager.readExcel(new File("/home/bearer/IdeaProjects/ssm_first/naifen/婴幼儿配方乳粉产品配方目录信息（2017年8月22日）.xlsx"));
    }

}
