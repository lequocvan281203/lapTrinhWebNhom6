package serviceImpl;

import java.util.List;

import dao.IUserDao;
import daoImpl.UserDao;
import model.UserModel;
import paging.Pageble;
import service.IUserService;

public class UserService implements IUserService{

	IUserDao userDAO = new UserDao();

	@Override
	public UserModel findByUserNamePasswordStatus(String userName, String password) 
	{
			return userDAO.findByUserNamePasswordStatus(userName, password);
	}

	@Override
	public UserModel findOne(Long id) {
		return userDAO.findOne(id);
	}

	@Override
	public UserModel insertUser(UserModel userModel) {
		Long newId = userDAO.insertUser(userModel);
		return userDAO.findOne(newId);
	}

	@Override
	public List<UserModel> findAll() 
	{
		return userDAO.findAll();
	}

	@Override
	public UserModel changePassword(UserModel userModel) {
		userDAO.chagePassword(userModel);
		return userDAO.findOne(userModel.getId());
	}

	@Override
	public int getTotalItem() {
		return userDAO.getTotalItem();
	}

	@Override
	public List<UserModel> findAll(Pageble pageble) {
		return userDAO.findAll(pageble);
	}

	@Override
	public void deleteUser(long[] ids) {
		for(long id: ids) {
			userDAO.deleteUser(id);
		}
	}

	@Override
	public UserModel updateUser(UserModel userModel) {
		userDAO.updateUser(userModel);
		return userDAO.findOne(userModel.getId());
	}

	@Override
	public UserModel findByUserNameSdt(String userName, String Sdt) {
		return userDAO.findByUserNameSdt(userName, Sdt);
	}

	@Override
	public int getTotalItemSearch(String key, String search) {
		return userDAO.getTotalItemSearch(key, search);
	}

	@Override
	public List<UserModel> findAllSearch(Pageble pageble, String key, String search) {
		return userDAO.findAllSearch(pageble, key, search);
	}

	@Override
	public int getTotalUser() {
		// TODO Auto-generated method stub
		return userDAO.getTotalUser();
	}

	@Override
	public UserModel updateStatusUser(Long id) {
		userDAO.updateStatusUser(id);
		return userDAO.findOne(id);
		
	}
	

}