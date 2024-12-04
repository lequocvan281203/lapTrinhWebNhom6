package service;

import java.util.List;

import model.UserModel;
import paging.Pageble;

public interface IUserService {
	UserModel findByUserNamePasswordStatus(String userName,String password);
	UserModel findOne(Long id);
	UserModel insertUser(UserModel userModel);
	List<UserModel> findAll();
	UserModel changePassword(UserModel userModel);
	void deleteUser(long ids[]);
	UserModel updateUser(UserModel userModel);
	UserModel findByUserNameSdt(String userName,String Sdt);
	
	//Paging
	
	int getTotalItem();
	int getTotalItemSearch(String key,String search);
	List<UserModel> findAll(Pageble pageble);
	List<UserModel> findAllSearch(Pageble pageble,String key,String search);
	int getTotalUser();
	UserModel updateStatusUser(Long id);
}