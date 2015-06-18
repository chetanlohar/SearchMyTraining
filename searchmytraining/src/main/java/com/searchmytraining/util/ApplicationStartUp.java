package com.searchmytraining.util;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.Index;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexableField;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.cache.ehcache.EhCacheManagerFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.service.ICalenderService;



@SuppressWarnings("deprecation")
public class ApplicationStartUp implements ServletContextListener{

	
	@Autowired
	public ICalenderService calenderservice;
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("From contextDestroyed() method");
		
	}

	@Override
	public void contextInitialized(ServletContextEvent ctxEvent) {
		System.out.println("Base Path is: "+ctxEvent.getServletContext().getInitParameter("LuceneIndexFilePath"));
		SearchUtil.basePath = ctxEvent.getServletContext().getInitParameter("LuceneIndexFilePath"); 
		try{
			deleteExistingIndex();
			indexTrainings(ctxEvent);
		}catch(Exception ex){
			System.out.println("Exception while indexing "+ex.getMessage());
			ex.printStackTrace();
		}
	}
	
	private void deleteExistingIndex(){
		Path dir = Paths.get(SearchUtil.basePath);
        try
        {
            Files.walkFileTree(dir, new SimpleFileVisitor<Path>()
            {
                  @Override
                  public FileVisitResult visitFile(Path file, BasicFileAttributes attrs)
                          throws IOException
                  {
                      System.out.println("Deleting file: " + file);
                      Files.delete(file);
                      return FileVisitResult.CONTINUE;
                  }
              
                  @Override
                  public FileVisitResult postVisitDirectory(Path dir,
                          IOException exc) throws IOException
                  {
                      System.out.println("Deleting dir: " + dir);
                      if (exc == null) {
                          Files.delete(dir);
                          return FileVisitResult.CONTINUE;
                      } else {
                          throw exc;
                      }
                   }
  
                });
        }
        catch (IOException e)
        {
          e.printStackTrace();
        }
    }
	
	
	public void indexTrainings(ServletContextEvent ctxEvent) throws Exception{
		SearchUtil util = new SearchUtil();
		IndexWriter idx = util.getIndexforCalenderEntities();
		WebApplicationContextUtils
        .getRequiredWebApplicationContext(ctxEvent.getServletContext())
        .getAutowireCapableBeanFactory()
        .autowireBean(this);
		
		List<CalenderEntity> calenders = calenderservice.getAllCalender();
		
		/*CalenderEntity cal1 = new CalenderEntity();
		cal1.setDescription("Summer Java Training by NIIT");
		cal1.setKeyword("JAVA, SQL, Hibernate, Multithreading");
		cal1.setCode("Pune, Virar Mumbai, Delhi");
		cal1.setContenttype("Classroom Training, Online Material");
		CalenderEntity cal2 = new CalenderEntity();
		cal2.setDescription("Personality Developement Training");
		cal2.setKeyword("Personality Development, Soft Skills, Personality Improvement");
		cal2.setCode("Hinjewadi, Pune, Ujjain");
		cal2.setContenttype("Corporate Training");*/
		
		for(CalenderEntity calender: calenders)
		{
			Document calenderDoc = createDocument(calender);
			idx.addDocument(calenderDoc);
		}
		
		/*Document d1 = createDocument(cal1);
		Document d2 = createDocument(cal2);
		idx.addDocument(d1);
		idx.addDocument(d2);*/
		
		idx.close();
	}

	private Document createDocument(CalenderEntity cal){
		Document doc = new Document();
		/*IndexableField idxFl = new Field("KeyWord",cal.getKeyword(),Store.YES,Index.ANALYZED);
		doc.add(idxFl);
		IndexableField idxF2 = new Field("Description",cal.getDescription(),Store.YES,Index.ANALYZED);
		doc.add(idxF2);
		IndexableField idxF3 = new Field("Code",cal.getCode(),Store.YES,Index.ANALYZED_NO_NORMS);
		doc.add(idxF3);
		IndexableField idxF4 = new Field("BasicSearchString",cal.getDescription() +" "+cal.getKeyword()+" "+cal.getCode(),Store.NO, Index.ANALYZED);
		doc.add(idxF4);*/
		System.out.println("from creatDocument :" + cal.getKeyword());
		IndexableField idxCalId = new Field("trngId",cal.getTrngId().toString(),Store.NO, Index.NOT_ANALYZED);
		doc.add(idxCalId);
		IndexableField idxKeyword = new Field("keyword",cal.getKeyword(),Store.YES,Index.ANALYZED);
		doc.add(idxKeyword);
		IndexableField idxTitle = new Field("title", cal.getTitle(), Store.YES, Index.ANALYZED);
		doc.add(idxTitle);
		IndexableField idxStartDate = new Field("start_date",cal.getStart_date(),Store.YES,Index.ANALYZED);
		doc.add(idxStartDate);
		IndexableField idxEndDate = new Field("end_date",cal.getEnd_date(),Store.YES,Index.ANALYZED);
		doc.add(idxEndDate);
		IndexableField idxPrice = new Field("price",cal.getPrice().toString(),Store.YES,Index.ANALYZED);
		doc.add(idxPrice);
		IndexableField idxPlace = new Field("place",cal.getPlace(),Store.YES,Index.ANALYZED_NO_NORMS);
		doc.add(idxPlace);
		IndexableField idxType = new Field("type",cal.getType(),Store.YES,Index.ANALYZED);
		doc.add(idxType);
		IndexableField idxDesc = new Field("description",cal.getDescription(),Store.YES,Index.ANALYZED);
		doc.add(idxDesc);
		IndexableField idxBasicSearch = new Field("BasicSearchString",cal.getTitle()+" "+cal.getDescription()+" "+cal.getKeyword()+" "+cal.getPlace(),Store.NO,Index.ANALYZED);
		doc.add(idxBasicSearch);
		return doc;
	}
}
