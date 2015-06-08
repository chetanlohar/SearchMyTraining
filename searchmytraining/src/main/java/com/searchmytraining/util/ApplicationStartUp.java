package com.searchmytraining.util;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.core.StopAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.Index;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexableField;
import org.apache.lucene.index.IndexableFieldType;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.BytesRef;
import org.springframework.context.ApplicationContext;

import com.searchmytraining.entity.CalenderEntity;

public class ApplicationStartUp implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent ctxEvent) {
		System.out.println("Base Path is"+ctxEvent.getServletContext().getInitParameter("LuceneIndexFilePath"));
		SearchUtil.basePath = ctxEvent.getServletContext().getInitParameter("LuceneIndexFilePath"); 
		try{
			indexTrainings();
		}catch(Exception ex){
			System.out.println("Exception while indexing "+ex.getMessage());
			ex.printStackTrace();
		}
				
	}
	
	public void indexTrainings() throws Exception{
		SearchUtil util = new SearchUtil();
		IndexWriter idx = util.getIndexforCalenderEntities();
		
		CalenderEntity cal1 = new CalenderEntity();
		cal1.setDescription("Summer Java Training by NIIT");
		cal1.setKeyword("JAVA, SQL, Hibernate, Multithreading");
		cal1.setCode("Pune, Virar Mumbai, Delhi");
		cal1.setContenttype("Classroom Training, Online Material");
		
		
		CalenderEntity cal2 = new CalenderEntity();
		cal2.setDescription("Personality Developement Training");
		cal2.setKeyword("Personality Development, Soft Skills, Personality Improvement");
		cal2.setCode("Hinjewadi, Pune, Ujjain");
		cal2.setContenttype("Corporate Training");
		
		
		
		Document d1 = createDocument(cal1);
		Document d2 = createDocument(cal2);
		
		idx.addDocument(d1);
		idx.addDocument(d2);
		
		idx.close();
		
	}

	@SuppressWarnings("deprecation")
	private Document createDocument(CalenderEntity cal){
		Document doc = new Document();
		IndexableField idxFl = new Field("KeyWord",cal.getKeyword(),Store.YES,Index.ANALYZED);
		doc.add(idxFl);
		IndexableField idxF2 = new Field("Description",cal.getDescription(),Store.YES,Index.ANALYZED);
		doc.add(idxF2);
		IndexableField idxF3 = new Field("Code",cal.getCode(),Store.YES,Index.ANALYZED_NO_NORMS);
		doc.add(idxF3);
		IndexableField idxF4 = new Field("BasicSearchString",cal.getDescription() +" "+cal.getKeyword()+" "+cal.getCode(),Store.NO, Index.ANALYZED);
		doc.add(idxF4);
		return doc;
	}
}
