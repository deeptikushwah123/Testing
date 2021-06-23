      package com.model;

    public class Papermaster {
	private long pmid ;
	private String papername ;
    private String date;
    private String exam_time ;  
    private String exam;  
    private String subjectname ;  
    
    private long questionno ;  
    private long questionm ;
    private String start_time ;
	  
    //papername
    public String getpapername (){
		return papername;
		}
	public void  setpapername (String papername)
	{
		this.papername=papername;
	}
	
	//paperid
	public long getpmid (){
		return pmid;
		}
	public void  setpmid (long pmid)
	{
		this.pmid=pmid;
	}
	
	//paperdate
	public String getdate (){
		return date;
		
	}
	public void  setdate (String date)
	{
	this.date=date;
	}
	
	//paper exam
	public String getexam (){
		return exam;
		}
	public void  setexam (String exam)
	{
		this.exam=exam;
	}
	
	//subject
	public String getsubjectname (){
		return subjectname;
		
	}
	public void  setsubjectname (String subjectname)
	{
		this.subjectname=subjectname;
	}
	
	//topic
	
	//questionno
	public long getquestionno (){
		return questionno;
		
	}
	public void  setquestionno (long questionno)
	{
		this.questionno=questionno;
	}
	
	//time
	public String getexam_time (){
		return exam_time;
		
	}
	public void  setexam_time (String exam_time)
	{
		this.exam_time=exam_time;
	}
	public String getstart_time (){
		return exam_time;
		
	}
	public void  setstart_time (String start_time)
	{
		this.start_time=start_time;
	}
	
	//marks
	public long getquestionm (){
		return questionm;
		
	}
	public void  setquestionm (long questionm)
	{
		this.questionm=questionm;
	}
	}
