package contect.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ContectDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace="contect.model.Contect"; 
	
	public List<ContectBean> selectAllContect(Map<String,String> map){
		List<ContectBean> lists=sqlSessionTemplate.selectList(namespace+".SelectContect", map);
		return lists;
	}
	public List<ContectBean> selectMyContect(int mno){
		List<ContectBean> lists=sqlSessionTemplate.selectList(namespace+".SelectMyContect",mno);
		return lists;
	}
	public ContectBean selectContectDetail(int no) {
		if(no%2==0) {
			sqlSessionTemplate.update(namespace+".UpdateReadcount",no);  
		}
		ContectBean contect = sqlSessionTemplate.selectOne(namespace+".SelectContectDetail", no);
		return contect;
	}
	public void insertReplyContect(ContectBean contect) {
		sqlSessionTemplate.update(namespace+".UpdateReply", contect);
		contect.setNo(contect.getNo()-1);
		sqlSessionTemplate.insert(namespace+".InsertReplyContect", contect);
	}
	public void insertNewContect(ContectBean contect) {
		System.out.println("contect.getCategory_num()2"+contect.getCategory_num());
		sqlSessionTemplate.insert(namespace+".InsertNewContect",contect);
	}
	public List<ContectBean> selectContectToReply(Map<String, String> map){
		List<ContectBean> lists=sqlSessionTemplate.selectList(namespace+".SelectContectToReply",map);
		return lists;
	}
	public void deleteContect(int no) {
		sqlSessionTemplate.delete(namespace+".DeleteContect", no);
		
	}
	public void deleteReplyContect(int no) {
		sqlSessionTemplate.delete(namespace+".DeleteReplyContect", no);		
	}
	public void updateContect(ContectBean contect) {
		sqlSessionTemplate.update(namespace+".UpdateContect", contect);
	}
	public int getTotalCount(Map<String, String> map) {
		int total=sqlSessionTemplate.selectOne(namespace+".GetTotalCount", map);
		return total;
	}
}
