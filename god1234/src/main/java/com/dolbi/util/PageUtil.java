package com.dolbi.util;

public class PageUtil {
	
	private int pageNum;//茄 其捞瘤寸 单捞磐 俺荐
	private int startRow;//矫累青
	private int endRow;//场青
	private int totalPageCount;//场青
	private int startPageNum;//场青
	private int endPageNum;//场青
	private int rowBlockCount;//场青
	private int pageBlockCount;//场青
    private int totalRowCount;//场青
	
  public PageUtil(){}
  
  public PageUtil(int pageNum,int totalRowcount,int rowBlockCount,int pageBlockCount){
  
  
     this.pageNum=pageNum;
     this.totalRowCount=totalRowcount;
     this.rowBlockCount=rowBlockCount;
     this.pageBlockCount=pageBlockCount;
     
     
     startRow=(pageNum-1)*rowBlockCount+1;
     endRow=pageNum*10;
     totalPageCount=(int)Math.ceil(totalRowcount/(double)rowBlockCount);
     
     startPageNum=(pageNum-1)/pageBlockCount*pageBlockCount+1;
     
     endPageNum=startPageNum+pageBlockCount-1;
     if(totalPageCount<endPageNum){
    	 endPageNum=totalPageCount;
     }
   
  }

public int getPageNum() {
	return pageNum;
}

public void setPageNum(int pageNum) {
	this.pageNum = pageNum;
}

public int getStartRow() {
	return startRow;
}

public void setStartRow(int startRow) {
	this.startRow = startRow;
}

public int getEndRow() {
	return endRow;
}

public void setEndRow(int endRow) {
	this.endRow = endRow;
}

public int getTotalPageCount() {
	return totalPageCount;
}

public void setTotalPageCount(int totalPageCount) {
	this.totalPageCount = totalPageCount;
}

public int getStartPageNum() {
	return startPageNum;
}

public void setStartPageNum(int startPageNum) {
	this.startPageNum = startPageNum;
}

public int getEndPageNum() {
	return endPageNum;
}

public void setEndPageNum(int endPageNum) {
	this.endPageNum = endPageNum;
}

public int getRowBlockCount() {
	return rowBlockCount;
}

public void setRowBlockCount(int rowBlockCount) {
	this.rowBlockCount = rowBlockCount;
}

public int getPageBlockCount() {
	return pageBlockCount;
}

public void setPageBlockCount(int pageBlockCount) {
	this.pageBlockCount = pageBlockCount;
}

public int getTotalRowCount() {
	return totalRowCount;
}

public void setTotalRowCount(int totalRowCount) {
	this.totalRowCount = totalRowCount;
}

}













