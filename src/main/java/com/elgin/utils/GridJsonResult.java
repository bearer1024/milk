package com.elgin.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 符合easy ui grid 格式的json result<br>
 */
public class GridJsonResult {

    public GridJsonResult(){}

    public GridJsonResult(Page page){

        HttpServletRequest request = ThreadContextHolder.getHttpRequest();
        String draws = request.getParameter("draw");
        draws = ( draws==null ?"1":draws);

        this.draw = Long.parseLong(draws);
        this.recordsFiltered= page.getTotalCount();
        this.recordsTotal= page.getTotalCount();
        this.data= (List)page.getResult();
    }

    /**
     * 带有List参数的构造函数<br>
     * 填充好total 和rows
     * @param list
     */
    public GridJsonResult(List list){
        HttpServletRequest request = ThreadContextHolder.getHttpRequest();
        String draws = request.getParameter("draw");
        draws = ( draws==null ?"1":draws);

        this.draw = Long.parseLong(draws);
        this.recordsFiltered= list.size();
        this.recordsTotal= list.size();
        this.data= list;

    }

    private long draw;			//本页面记录服务器端返回多少次

    private long recordsFiltered;	//前端过滤后的条数

    private long recordsTotal;	//一共多少条

    private List data;

    public long getDraw() {
        return draw;
    }

    public void setDraw(long draw) {
        this.draw = draw;
    }

    public long getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(long recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public long getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(long recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public List getData() {
        return data;
    }

    public void setData(List data) {
        this.data = data;
    }


}