package com.elgin.utils;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.*;

public class SheetManager {
    private final int FIRST_ROW_NO = 3;
    private final int FIRST_COLUMN_NO =1;
    private final int FIRST_SHEET_NO = 0;

    public String readExcel(File remoteFile){
        try {
            OPCPackage  pkg = OPCPackage.open(remoteFile);
            XSSFWorkbook xssfWorkbook = new XSSFWorkbook(pkg);
            DataFormatter dataFormatter = new DataFormatter();
            for(int i=FIRST_SHEET_NO;i<xssfWorkbook.getNumberOfSheets();i++){
                Sheet sheet = xssfWorkbook.getSheetAt(i);
                //System.out.println(xssfWorkbook.getSheetName(i));
                /*for(Row row : sheet){
                    System.out.println("rownum:" + row.getRowNum());
                    for (Cell cell: row){
                        System.out.println("cell:"+cell);
                    }
                }*/
                for (int rowNum = FIRST_ROW_NO; rowNum < sheet.getLastRowNum(); rowNum++) {
                    Row row = sheet.getRow(rowNum);
                    if (row == null) {
                        // This whole row is empty
                        // Handle it as needed
                        continue;
                    }

                    for (int colNum = FIRST_COLUMN_NO; colNum < row.getLastCellNum(); colNum++) {
                        //CellReference cellReference = new CellReference(rowNum,colNum);
                        Cell cell = row.getCell(colNum);
                        if (cell == null) {
                            // The spreadsheet is empty in this cell
                        } else {
                            //System.out.println(dataFormatter.formatCellValue(cell));
                            /*System.out.println(cell.getStringCellValue());*/
                            System.out.println(cell);
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

}
