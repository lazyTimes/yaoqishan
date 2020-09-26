package cn.javaex.yaoqishan.dao.email_info;

import cn.javaex.yaoqishan.view.EmailInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IEmailInfoDAO {

	List<EmailInfo> list();

	int insert(EmailInfo emailInfo);

	int update(EmailInfo emailInfo);

	int delete(@Param("idArr") String[] idArr);

	/**
	 * 根据主键查询记录信息
	 * @param id 主键
	 * @return
	 */
	EmailInfo selectById(String id);
	
}