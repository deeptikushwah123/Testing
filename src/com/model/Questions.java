
package com.model;
import java.util.Random ;
public class Questions {
	
	private String  questionno ;
	private String  question;
	private String  option1;
	private String  subjectname;
	private String  option2 ;
	private String  option3;
	private String  option4  ;
	private String   correctans ;
	
	public String getsubjectname(){
		return subjectname;
		
	}
	public void  setsubjectname (String subjectname)
	{
		this.subjectname=subjectname;
	}
	

	
	public String getquestionno (){
		return questionno;
		
	}
	public void  setquestionno (String questionno)
	{
		this.questionno=questionno;
	}
	

	public String getquestion (){
		return question;
		
	}
	public void  setquestion (String question)
	{
		this.question=question;
	}
	

	public String getoption1 (){
		return option1;
		
	}
	public void  setoption1 (String option1)
	{
		this.option1=option1;
	}
	

	public String getoption2 (){
		return option2;
		
	}
	public void  setoption2 (String option2)
	{
		this.option2=option2;
	}
	

	public String getoption3 (){
		return option3;
		
	}
	public void  setoption3 (String option3)
	{
		this.option3=option3;
	}
	

	public String getoption4 (){
		return option4;
		
	}
	public void  setoption4 (String option4)
	{
		this.option4=option4;
	}
	
	public String getcorrectans (){
		return correctans;
		
	}
	public void setcorrectans (String correctans)
	{
		this.correctans=correctans;
	}
	

}
