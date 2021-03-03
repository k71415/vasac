package com.vasac.domain;

public class CategoryVO {
	private String cateName;
	private String cateCode;
	private String cateCodeRef;
	
	
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	@Override
	public String toString() {
		return "CategoryVO [cateName=" + cateName + ", cateCode=" + cateCode + ", cateCodeRef=" + cateCodeRef + "]";
	}
	public String getCateCodeRef() {
		return cateCodeRef;
	}
	public void setCateCodeRef(String cateCodeRef) {
		this.cateCodeRef = cateCodeRef;
	}
	
	
}
