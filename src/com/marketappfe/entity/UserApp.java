package com.marketappfe.entity;

import java.util.Iterator;
import java.util.List;

import org.apache.catalina.Group;
import org.apache.catalina.Role;
import org.apache.catalina.User;
import org.apache.catalina.UserDatabase;

public class UserApp implements User
{
	private String username;
	private String fullname;
	private String password;
	private String name;
	private List<Group> groups;
	private List<Role> roles;
	private UserDatabase userDatabase;
	
	
	@Override
	public String getName()
	{
		return name;
	}

	@Override
	public void addGroup(Group group)
	{
		if(groups != null)
		{
			groups.add(group);
		}
	}

	@Override
	public void addRole(Role role)
	{
		if(roles != null)
		{
			roles.add(role);
		}
	}

	@Override
	public String getFullName()
	{
		return fullname;
	}

	@Override
	public Iterator<Group> getGroups()
	{
		return groups.iterator();
	}

	@Override
	public String getPassword()
	{
		return password;
	}

	@Override
	public Iterator<Role> getRoles()
	{
		return roles.iterator();
	}

	@Override
	public UserDatabase getUserDatabase()
	{
		return userDatabase;
	}

	@Override
	public String getUsername()
	{
		return username;
	}

	@Override
	public boolean isInGroup(Group group)
	{
		if(groups != null)
		{
			for(Group g : groups)
			{
				if(g.getGroupname().equals(group.getGroupname()))
				{
					return true;					
				}
			}
		}
		return false;
	}

	@Override
	public boolean isInRole(Role role)
	{
		if(roles != null)
		{
			for(Role r : roles)
			{
				if(r.getRolename().equals(role.getRolename()))
				{
					return true;
				}
			}
		}
		return false;
	}

	@Override
	public void removeGroup(Group group)
	{
		if(groups != null)
		{
			for(Group g : groups)
			{
				if(g.getGroupname().equals(group.getGroupname()))
				{
					groups.remove(g);
				}
			}
		}
	}

	@Override
	public void removeGroups()
	{
		if(groups != null)
		{
			groups.clear();
		}
	}

	@Override
	public void removeRole(Role role)
	{
		if(roles != null)
		{
			for(Role r : roles)
			{
				if(r.getRolename().equals(role.getRolename()))
				{
					roles.remove(r);
				}
			}
		}
	}

	@Override
	public void removeRoles()
	{
		if(roles != null)
		{
			roles.clear();
		}
	}

	@Override
	public void setFullName(String fullName)
	{
		fullname = fullName;
	}

	@Override
	public void setPassword(String pass)
	{
		password = pass;
	}

	@Override
	public void setUsername(String user)
	{
		username = user;
	}
}
