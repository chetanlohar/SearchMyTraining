package com.searchmytraining.dao.impl;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.springframework.stereotype.Repository;

import com.searchmytraining.dao.AbstractJpaDAO;
import com.searchmytraining.dao.CalenderDAO;
import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.util.SearchUtil;

@Repository
public class CalenderDaoImpl extends AbstractJpaDAO<CalenderEntity> implements
		CalenderDAO {
	EntityManager entityManager;

	@Override
	public void addCalender(CalenderEntity entity) {
		create(entity);
	}

	@Override
	public List<CalenderEntity> getRecentelyAdded(Integer userId,
			Timestamp timestamp) {

		String query = "from CalenderEntity calender where calender.user.userId='"+userId+"' and SUBSTRING(calender.createdOn,1,11)='" + timestamp.toString().substring(0, 11).trim()+"'";
		
		entityManager = getEntityManager();
		TypedQuery<CalenderEntity> query1 = entityManager.createQuery(query,CalenderEntity.class);
		List<CalenderEntity> l = query1.getResultList();
		return l;
	}

	@Override
	public List<CalenderEntity> getUserCalender(Integer userId) {
		String query = "from CalenderEntity calender where calender.user.userId="+userId;
		entityManager = getEntityManager();
		TypedQuery<CalenderEntity> query1 = entityManager.createQuery(query,CalenderEntity.class);
		List<CalenderEntity> l = query1.getResultList();
		return l;
	}

	@Override
	public List<CalenderEntity> getAllCalender() {
		setClazz(CalenderEntity.class);
		return findAll();
	}

	@Override
	public String updateCalender(CalenderEntity entity) {
		update(entity);
		return "success";
	}

	@Override
	public void removeCalender(long calenderId) {
		deleteById(calenderId);
	}

	@Override
	public List<CalenderEntity> getCalendersByKeyword(String keyword) {
		
		List<CalenderEntity> list = new ArrayList<CalenderEntity>();
		CalenderEntity cal;
		try{
			Path path = Paths.get(SearchUtil.basePath);
			Directory dir = FSDirectory.open(path);
			
			IndexReader reader = DirectoryReader.open(dir);
			IndexSearcher searcher = new IndexSearcher(reader);
			
			QueryParser queryParser = new QueryParser("BasicSearchString",new StandardAnalyzer());
			
			Query query = queryParser.parse(keyword);
			
			TopDocs topDocs = searcher.search(query, 10);
			
			ScoreDoc[] scoreDosArray = topDocs.scoreDocs;
			
			for(ScoreDoc scoredoc: scoreDosArray){
			      //Retrieve the matched document and show relevant details
			      Document doc = searcher.doc(scoredoc.doc);
			      
			      /*System.out.println("\nKeyWord: "+doc.getField("KeyWord").stringValue());
			      System.out.println("Description: "+doc.getField("Description").stringValue());
			      System.out.println("Code: "+doc.getField("Code").stringValue());*/

			      System.out.println("\nTitle: "+doc.getField("title").stringValue());
			      System.out.println("KeyWord: "+doc.getField("keyword").stringValue());
			      System.out.println("Place: "+doc.getField("place").stringValue());
			     
			      cal = new CalenderEntity();
			      cal.setTitle(doc.getField("title").stringValue());
			      cal.setStart_date(doc.getField("start_date").stringValue());
			      cal.setEnd_date(doc.getField("end_date").stringValue());
			      cal.setPrice(Double.parseDouble(doc.getField("price").stringValue()));
			      cal.setKeyword(doc.getField("keyword").stringValue());
			      cal.setTitle(doc.getField("title").stringValue());
			      cal.setPlace(doc.getField("place").stringValue());
			      cal.setDescription(doc.getField("description").stringValue());
			      cal.setType(doc.getField("type").stringValue());
			      list.add(cal);
			   }
			
		}catch(Exception ex){
			System.out.println("Exception::"+ex.getMessage());
			ex.printStackTrace();
		}
		
		return list;
		
	}

}
