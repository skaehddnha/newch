package com.dev.ch.common.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class AutoDumyData {
	//엑셀파일 경로.
	public final static String EXCEL_FILE = "/Users/chunkind/Documents/doc/테스트 유저 데이터.xlsx";
	private FileInputStream fis = null;
	private XSSFWorkbook workbook = null;
	private int sheetNb; 
	
	public AutoDumyData(){
		try {
			fis = new FileInputStream(EXCEL_FILE);
			workbook = new XSSFWorkbook(fis);
			sheetNb = 0; //시트 넘버
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * @User : KJS
	 * @date : 2017. 12. 29.
	 * 엑셀의 첫번째 열을 출력.
	 */
	public void getFistRows(){
		XSSFSheet sheet = workbook.getSheetAt(sheetNb);
		XSSFRow row = sheet.getRow(0);
		int cellSize = row.getPhysicalNumberOfCells();
		for(int i=0; i<cellSize; i++){
			XSSFCell cell = row.getCell(i);
			String title = cell.getStringCellValue();
			System.out.println(title);
		}
	}
	
	/**
	 * @User : KJS
	 * @date : 2017. 12. 29.
	 * 한글열에 해당하는 인덱스를 얻어옴.
	 */
	public int getSpoidByStr(String target){
		XSSFSheet sheet = workbook.getSheetAt(sheetNb);
		XSSFRow row = sheet.getRow(0);
		int cellSize = row.getPhysicalNumberOfCells();
		for(int i=0; i<cellSize; i++){
			XSSFCell cell = row.getCell(i);
			String title = cell.getStringCellValue();
			if(target.equals(title)){
				return i;
			}
		}
		return -1;
	}
	
	/**
	 * @User : KJS
	 * @date : 2017. 12. 29.
	 * 인덱스에 해당하는 열의 데이터를 가져옴.
	 */
	public ArrayList<String> getTargetCellData(int target){
		XSSFSheet sheet = workbook.getSheetAt(sheetNb);
		ArrayList<String> list = new ArrayList<String>();
		int rows = sheet.getPhysicalNumberOfRows();
		XSSFRow row = null;
		XSSFCell cell = null;
		for(int i=1; i<rows; i++){
			row = sheet.getRow(i);
			cell = row.getCell(target);
			String title = cell.getStringCellValue();
			list.add(title);
		}
		return list;
	}
	
	/**
	 * @User : KJS
	 * @date : 2017. 12. 29.
	 * 인덱스에 해당하는 열의 데이터를 인덱스로 가져옴.
	 */
	public String getTargetCellData(int trow, int tcol){
		XSSFSheet sheet = workbook.getSheetAt(sheetNb);
		ArrayList<String> list = new ArrayList<String>();
		int rows = sheet.getPhysicalNumberOfRows();
		XSSFRow row = null;
		XSSFCell cell = null;
		for(int i=1; i<rows; i++){
			row = sheet.getRow(i);
			cell = row.getCell(trow);
			String title = cell.getStringCellValue();
			list.add(title);
		}
		return list.get(tcol).toString();
	}
	
	/**
	 * @User : KJS
	 * @date : 2017. 12. 29.
	 * 데이터 카운트.
	 */
	public int rowsCnt(){
		XSSFSheet sheet = workbook.getSheetAt(sheetNb);
		return sheet.getPhysicalNumberOfRows()-1;
	}
	
	/**
	 * @User : KJS
	 * @date : 2017. 12. 29.
	 * 테스트.
	 */
	public void test(){
		//파일을 읽기위해 엑셀파일을 가져온다
		int rowindex = 0;
		int columnindex = 0;
		//시트 수 (첫번째에만 존재하므로 0을 준다)
		//만약 각 시트를 읽기위해서는 FOR문을 한번더 돌려준다
		XSSFSheet sheet = workbook.getSheetAt(sheetNb);
		//행의 수
		int rows = sheet.getPhysicalNumberOfRows();
		for(rowindex = 1; rowindex<rows; rowindex++){
		    //행을읽는다
		    XSSFRow row = sheet.getRow(rowindex);
		    if(row != null){
		        //셀의 수
		        int cells = row.getPhysicalNumberOfCells();
		        for(columnindex = 0; columnindex <= cells; columnindex++){
		            //셀값을 읽는다
		            XSSFCell cell = row.getCell(columnindex);
		            String value = "";
		            //셀이 빈값일경우를 위한 널체크
		            if(cell==null){
		                continue;
		            }else{
		                //타입별로 내용 읽기
		                switch (cell.getCellType()){
		                case XSSFCell.CELL_TYPE_FORMULA:
		                    value = cell.getCellFormula();
		                    break;
		                case XSSFCell.CELL_TYPE_NUMERIC:
		                    value = cell.getNumericCellValue()+"";
		                    break;
		                case XSSFCell.CELL_TYPE_STRING:
		                    value = cell.getStringCellValue()+"";
		                    break;
		                case XSSFCell.CELL_TYPE_BLANK:
		                    value = cell.getBooleanCellValue()+"";
		                    break;
		                case XSSFCell.CELL_TYPE_ERROR:
		                    value = cell.getErrorCellValue()+"";
		                    break;
		                }
		            }
		            System.out.println("각 셀 내용 :"+value);
		        }
		    }
		}
	}
	
	
	public static void main(String[] args) throws IOException {
		AutoDumyData a01 = new AutoDumyData();
		int result = a01.getSpoidByStr("이름");
		ArrayList<String> r = a01.getTargetCellData(result);
		System.out.println(r.get(0).toString());
	}
}
