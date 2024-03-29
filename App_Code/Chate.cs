﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Web;
/// <summary>
/// Summary description for chate
/// </summary>
public class chate
{
    private Guid m_id;
    public Guid Id
    {
        get { return m_id; }
    }
    private List<string> m_messages = new List<string>();
    public List<string> Messages
    {
        get { return m_messages; }
    }
    private List<Chatter> m_chatters = new List<Chatter>();
    public List<Chatter> Chatters
    {
        get { return m_chatters; }
        set { m_chatters = value; }
    }
    public static ReadOnlyCollection<chate> ActiveChats()
    {
        if (HttpContext.Current.Application["Chats"] != null)
        {
            List<chate> chats = ((List<chate>)HttpContext.Current.Application["Chats"]);
            return new ReadOnlyCollection<chate>(chats);
        }
        else
        {
            return new ReadOnlyCollection<chate>(new List<chate>());
        }
    }

    public string SendMessage(Chatter chatter, string message)
    {
        string messageMask = "{0} @ {1} : {2}";

        message = string.Format(messageMask, chatter.Name, DateTime.Now.ToString(), message);
        m_messages.Add(message);
        return message;
    }
}