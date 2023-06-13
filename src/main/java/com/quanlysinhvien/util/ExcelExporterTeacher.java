package com.quanlysinhvien.util;

import com.quanlysinhvien.model.respone.TeacherRespone;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import javax.servlet.ServletOutputStream;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class ExcelExporterTeacher {
    private XSSFWorkbook workbook;
    private XSSFSheet sheet;
    private List<TeacherRespone> list;

    public ExcelExporterTeacher(List<TeacherRespone> list) {
        workbook = new XSSFWorkbook();
        this.list = list;
    }

    private void writeTitleLine() {
        sheet = workbook.createSheet("teachers");
        Row row = sheet.createRow(0);
        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setBold(true);
        font.setFontName("Times New Roman");
        font.setFontHeight(16);
        style.setFont(font);
        createCell(row, 0, "DANH SÁCH GIẢNG VIÊN", style);
        sheet.addMergedRegion(CellRangeAddress.valueOf("A1:L1"));

    }

    private void writeHeaderLine() {
        Row row = sheet.createRow(3);

        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setBold(true);
        font.setFontName("Times New Roman");
        font.setFontHeight(14);
        style.setFont(font);

        createCell(row, 0, "Code", style);
        createCell(row, 1, "First name", style);
        createCell(row, 2, "Last name", style);
        createCell(row, 3, "Department", style);
        createCell(row, 4, "Gender", style);
        createCell(row, 5, "Phone", style);
        createCell(row, 6, "Date of birth", style);
        createCell(row, 7, "Email", style);

    }

    private void createCell(Row row, int columnCount, Object value, CellStyle style) {
        sheet.autoSizeColumn(columnCount);
        Cell cell = row.createCell(columnCount);
        if (value instanceof Integer) {
            cell.setCellValue((Integer) value);
        } else if (value instanceof Boolean) {
            cell.setCellValue((Boolean) value);
        } else if (value instanceof Long) {
            cell.setCellValue((Long) value);
        }else {
            cell.setCellValue((String) value);
        }
        cell.setCellStyle(style);
    }

    private void writeDataLines() {
        int rowCount = 4;

        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setFontHeight(14);
        font.setFontName("Times New Roman");
        style.setFont(font);

        for (TeacherRespone teacher : list) {
            Row row = sheet.createRow(rowCount++);
            int columnCount = 0;

            createCell(row, columnCount++, teacher.getCode(), style);
            createCell(row, columnCount++, teacher.getFname(), style);
            createCell(row, columnCount++, teacher.getLname(), style);
            createCell(row, columnCount++, teacher.getDepartment_name(), style);
            createCell(row, columnCount++, teacher.getGender(), style);
            createCell(row, columnCount++, teacher.getPhone(), style);
            createCell(row, columnCount++, teacher.getDob(), style);
            createCell(row, columnCount++, teacher.getEmail(), style);
        }
    }

    public void export(HttpServletResponse response) throws IOException {
        writeTitleLine();
        writeHeaderLine();
        writeDataLines();

        ServletOutputStream outputStream = response.getOutputStream();
        workbook.write(outputStream);
        workbook.close();

        outputStream.close();

    }



}