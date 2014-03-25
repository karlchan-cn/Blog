package cn.com.kc.blog.common.util;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import cn.com.kc.blog.commondao.pagination.impl.PageRequestImpl;
import cn.com.kc.blog.commondao.pagination.service.Page;
import cn.com.kc.blog.commondao.pagination.service.PageRequest;

import com.alibaba.fastjson.JSONObject;

/**
 * utility class to extract datatable request parameters and so on.
 * 
 * @author kchen1
 * 
 */
public class DataTableUtility {
	/**
	 * iDisplayStart-Display start point in the current data set.
	 */
	public static final String CONST_PARANAME_iDisplayStart = "iDisplayStart";
	/**
	 * iDisplayLength-Number of records that the table can display in the
	 * current draw. It is expected that the number of records returned will be
	 * equal to this number, unless the server has fewer records to return.
	 */
	public static final String CONST_PARANAME_iDisplayLength = "iDisplayLength";
	/**
	 * iColumns-Number of columns being displayed (useful for getting individual
	 * column search info)
	 */
	public static final String CONST_PARANAME_iColumns = "iColumns";
	/**
	 * sSearch- Global search field
	 */
	public static final String CONST_PARANAME_sSearch = "sSearch";
	/**
	 * bRegex-True if the global filter should be treated as a regular
	 * expression for advanced filtering, false if not.
	 */
	public static final String CONST_PARANAME_bRegex = "bRegex";

	/**
	 * iSortingCols-Number of columns to sort on
	 */
	public static final String CONST_PARANAME_iSortingCols = "iSortingCols";
	/**
	 * sEcho-Information for DataTables to use for rendering.
	 */
	public static final String CONST_PARANAME_sEcho = "sEcho";

	/**
	 * iTotalRecords-Total records, before filtering (i.e. the total number of
	 * records in the database).
	 */
	public static final String CONST_PARANAME_iTotalRecords = "iTotalRecords";
	/**
	 * sEcho-Total records, after filtering (i.e. the total number of records
	 * after filtering has been applied - not just the number of records being
	 * returned in this result set).
	 */
	public static final String CONST_PARANAME_iTotalDisplayRecords = "iTotalDisplayRecords";

	/**
	 * aaData-array-The data in a 2D array. Note that you can change the name of
	 * this parameter with sAjaxDataProp..
	 */
	public static final String CONST_PARANAME_aaData = "aaData";

	/**
	 * avoid being instanced
	 */
	private DataTableUtility() {

	}

	/**
 * 
 */
	public static PageRequest extractRequstParameters(
			final HttpServletRequest request) {
		final PageRequest pageRequest = new PageRequestImpl();
		pageRequest.setPageNumber(Integer.valueOf(request
				.getParameter(CONST_PARANAME_iDisplayStart)));
		pageRequest.setPageSize(Integer.valueOf(request
				.getParameter(CONST_PARANAME_iDisplayLength)));
		return pageRequest;

	}

	/**
	 * 组装表格数据.
	 * 
	 * @return 表格数据.
	 */
	public static JSONObject assembleTableData(Page page) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put(CONST_PARANAME_iTotalRecords,
				page.getTotalNumberOfElements());
		jsonObject.put(CONST_PARANAME_iTotalDisplayRecords, page.getPageSize());
		jsonObject.put(CONST_PARANAME_aaData, page.getContent());
		return jsonObject;
	}
}
