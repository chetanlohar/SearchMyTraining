package com.searchmytraining.util;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.lucene.analysis.core.StopAnalyzer;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

public class SearchUtil {
	
	public static String basePath;
	
	public String getBasePath() {
		return basePath;
	}

	

	public IndexWriter getIndexforCalenderEntities() throws Exception{
		
		File file = new File(basePath);
		
		file.delete();
		
		Path path = Paths.get(basePath);
		Directory dir = FSDirectory.open(path);
		IndexWriterConfig conf = new IndexWriterConfig(new StopAnalyzer());
		IndexWriter idx = new IndexWriter(dir,conf);
		return idx;
		
	}
	
}
