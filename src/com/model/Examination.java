package com.model;

public class Examination {
	
	private String eid ;
	private String examname;
    private long institutionid;
    private long eno;  
	
	public String geteid (){
		return eid;
		
	}
	public void  seteid (String eid)
	{
		this.eid=eid;
	}
	public String getexamname (){
		return examname;
		
	}
	public void  setexamname (String examname)
	{
		this.examname=examname;
	}
	public long geteno (){
		return eno;
		
	}
	public void  seteno (long eno)
	{
		this.eno=eno;
	}
	public long getinstitutionid (){
		return institutionid;
		
	}
	public void  setinstitutionid (long institutionid)
	{
		this.institutionid=institutionid;
	}

}
