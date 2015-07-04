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
import org.apache.lucene.document.StoredField;
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
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.searchmytraining.entity.CalenderEntity;
import com.searchmytraining.service.ICalenderService;



@SuppressWarnings("deprecation")
public class ApplicationStartUp implements ServletContextListener{

	
	@Autowired
	public ICalenderService calenderservice;
	
	@Autowired
	public WebApplicationContext context;
	
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
		for(CalenderEntity calender: calenders)
		{
			Document calenderDoc = createDocument(calender);
			idx.addDocument(calenderDoc);
		}
		idx.close();
	}

	private Document createDocument(CalenderEntity cal){
		/*Document doc = (Document)context.getBean("lucenedocument");*/
		Document doc = new Document();
		IndexableField idxCalId = new Field("trngId",cal.getTrngId().toString(),Store.YES, Index.NOT_ANALYZED);
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
		IndexableField idxPlace = new Field("place",cal.getCity().getCityName(),Store.YES,Index.ANALYZED);
		doc.add(idxPlace);
		IndexableField idxType = new Field("type",cal.getType(),Store.YES,Index.ANALYZED);
		doc.add(idxType);
		IndexableField idxDesc = new Field("description",cal.getDescription(),Store.YES,Index.ANALYZED_NO_NORMS);
		doc.add(idxDesc);
		IndexableField idxBroucher = new Field("brochure",cal.getBrochure(),Store.YES,Index.ANALYZED_NO_NORMS);
		doc.add(idxBroucher);
		IndexableField idxBasicSearch = new Field("BasicSearchString",cal.getTitle()+" "+cal.getDescription()+" "+cal.getKeyword()+" "+cal.getCity().getCityName()+" "+cal.getPrice().toString(),Store.NO,Index.ANALYZED);
		doc.add(idxBasicSearch);
		
		/*IndexableField idxCalId = new StoredField("trngId",cal.getTrngId());
		doc.add(idxCalId);
		IndexableField idxKeyword = new StoredField("keyword",cal.getKeyword());
		doc.add(idxKeyword);
		IndexableField idxTitle = new StoredField("title", cal.getTitle());
		doc.add(idxTitle);
		IndexableField idxStartDate = new StoredField("start_date",cal.getStart_date());
		doc.add(idxStartDate);
		IndexableField idxEndDate = new StoredField("end_date",cal.getEnd_date());
		doc.add(idxEndDate);
		IndexableField idxPrice = new StoredField("price",cal.getPrice().toString());
		doc.add(idxPrice);
		IndexableField idxPlace = new StoredField("place",cal.getPlace());
		doc.add(idxPlace);
		IndexableField idxType = new StoredField("type",cal.getType());
		doc.add(idxType);
		IndexableField idxDesc = new StoredField("description",cal.getDescription());
		doc.add(idxDesc);
		IndexableField idxBasicSearch = new StoredField("BasicSearchString",cal.getTitle()+" "+cal.getDescription()+" "+cal.getKeyword()+" "+cal.getPlace()+" "+cal.getPrice().toString());
		doc.add(idxBasicSearch);*/
		
		return doc;
	}
}
