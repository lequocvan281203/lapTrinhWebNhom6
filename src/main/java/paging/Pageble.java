package paging;


public interface Pageble {
	Integer getPage();
	Integer getOffset();
	Integer getLimit();
}