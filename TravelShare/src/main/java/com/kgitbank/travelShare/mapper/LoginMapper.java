package com.kgitbank.travelShare.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kgitbank.travelShare.model.LoginInfo;
import com.kgitbank.travelShare.model.UserInfo;

public interface LoginMapper {
	
	public List<LoginInfo> loginCheck(LoginInfo logininfo);

	public List<LoginInfo> CheckloginId(LoginInfo logininfo);
	
	public LoginInfo getUserName(@Param("user_email") String user_email);
}
