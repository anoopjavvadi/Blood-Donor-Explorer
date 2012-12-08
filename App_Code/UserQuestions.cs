using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserQuestions
/// </summary>
public class UserQuestions
{

    //
    private String question;
    public String author;
    public String answer;

    public String Question
    {
        get
        {
            return question;
        }
        set
        {
            question=value;
        }
    }
    public String Author
    {
        get
        {
            return author;
        }
        set
        {
            author = value;
        }
    }
    public String Answer
    {
        get
        {
            return answer;
        }
        set
        {
            answer = value;
        }
    }
}