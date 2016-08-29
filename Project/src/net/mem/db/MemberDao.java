package net.mem.db;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import net.mem.db.Memberbean;
import net.mem.db.MemberDao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDao {
	private SqlSession getSession() {
		SqlSession session=null;
		Reader reader=null;
		try {
			reader = Resources.getResourceAsReader("sqlMapConfig.xml");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
			session = sf.openSession(true);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return session;
	}

	public boolean insert(Memberbean member) {
		int result = 0;
		SqlSession session=null;
		try { session = getSession(); 
			result = session.insert("insert", member);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public int chk(Memberbean member) {
		int result = 0;
		SqlSession session=null;
		try { session = getSession(); 
			Memberbean mem = (Memberbean) session.selectOne("select", member.getMem_id());
			if (mem.getMem_id().equals(member.getMem_id())) {
				result = -1;
				if (mem.getMem_pw().equals(member.getMem_pw())) {
					result = 1;
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	public Memberbean select(String Mem_ID) throws SQLException {
		Memberbean mem = null;
		SqlSession session=null;
		try { session = getSession(); 
		mem = (Memberbean)session.selectOne("select", Mem_ID);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mem;
	}
	
	public List<Memberbean> list() {
		List<Memberbean> list = new ArrayList<Memberbean>();
		SqlSession session=null;
		try { session = getSession(); 
			list = session.selectList("list");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	public int delete(String id) {
		int result = 0;
		SqlSession session=null;
		try { session = getSession(); 
			result = session.delete("delete", id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	public int update(Memberbean mem) {
		int result = 0;
		SqlSession session=null;
		try { session = getSession(); 
			result = session.update("update", mem);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
}
