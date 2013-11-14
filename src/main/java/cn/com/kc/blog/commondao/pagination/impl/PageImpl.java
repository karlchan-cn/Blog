package cn.com.kc.blog.commondao.pagination.impl;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

import cn.com.kc.blog.commondao.pagination.service.Page;

/**
 * 
 * @author kchen1
 * 
 */
public class PageImpl implements Page<Serializable> {
/**
 * page elementss
 */
private List<Serializable> content;
/**
 * total numbers of all elements
 */
private long totalNumberOfElements;
/**
 * page size;
 */
private int pageSize;
/**
 * page number;
 */
private int pageNumber;

@Override
public Iterator<Serializable> iterator() {
	return content.iterator();
}

@Override
public List<Serializable> getContent() {
	return content;
}

public PageImpl(final List<Serializable> content, final Long totalNumberOfElements, final int pageSize,
				final int pageNumber) {
	this.content = content;
	this.totalNumberOfElements = totalNumberOfElements;
	this.pageNumber = pageNumber;
	this.pageSize = pageSize;

}

@Override
public int getPageNumber() {

	return 0;
}

@Override
public int getNumberOfElements() {
	return content.size();
}

@Override
public int getPageSize() {

	return pageSize;
}

@Override
public long getTotalNumberOfElements() {
	return totalNumberOfElements;
}

@Override
public int getTotalPages() {
	if (totalNumberOfElements == 0) {
		return 0;
	}
	if (getPageSize() == 0) {
		return 1;
	}
	int totalPages = (int) (totalNumberOfElements / pageSize);
	if ((totalNumberOfElements % pageSize) > 0) {
		totalPages++;
	}
	return totalPages;
}

@Override
public boolean hasNextPage() {
	return (pageNumber + 1) > getTotalPages();
}

@Override
public boolean hasPreviousPage() {

	return (pageNumber - 1) > 0;
}

@Override
public boolean isFirstPage() {
	return pageNumber == 1;
}

@Override
public boolean isLastPage() {

	return pageNumber == getTotalPages();
}

}
