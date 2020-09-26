package cn.javaex.yaoqishan.service.star_info;

import cn.javaex.yaoqishan.dao.star_info.IStarInfoDAO;
import cn.javaex.yaoqishan.view.StarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service("StarInfoService")
public class StarInfoService {
	@Autowired
	private IStarInfoDAO iStarInfoDAO;

	/**
	 * 查询明星列表
	 */
	public List<StarInfo> list() {
		return iStarInfoDAO.list();
	}

	/**
	 * 查询单个明星的信息
	 * @param id 主键
	 * @return
	 */
	public StarInfo selectById(String id) {
		return iStarInfoDAO.selectById(id);
	}

	/**
	 * 明星信息保存
	 * @param starInfo
	 */
	public void save(StarInfo starInfo) {
		// 判断是新增还是更新
		if (StringUtils.isEmpty(starInfo.getId())) {
			// 新增
			iStarInfoDAO.insert(starInfo);
		} else {
			// 更新
			iStarInfoDAO.update(starInfo);
		}
	}

}
