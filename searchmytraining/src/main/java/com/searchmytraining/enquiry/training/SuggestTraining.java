package com.searchmytraining.enquiry.training;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.annotation.PostConstruct;

import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.search.suggest.Lookup;
import org.apache.lucene.search.suggest.analyzing.AnalyzingInfixSuggester;
import org.apache.lucene.store.RAMDirectory;
import org.apache.lucene.util.BytesRef;
import org.apache.lucene.util.Version;

import com.searchmytraining.entity.TrainingEntity;
 
public class SuggestTraining {
	
    private List<String> initLookup(AnalyzingInfixSuggester suggester, String name) {
    	List<String>  lstResults = new ArrayList<String>();
        try {
            List<Lookup.LookupResult> results;
            HashSet<BytesRef> contexts = new HashSet<BytesRef>();
            //contexts.add(new BytesRef(addlParam.getBytes("UTF8")));
            // Do the actual lookup.  We ask for the top 10 results.
            results = suggester.lookup(name, contexts, 10, true, false);
            for (Lookup.LookupResult result : results) {
                TrainingEntity trainEnt = getTraining(result);
                if (trainEnt != null) {
                    /*lstResults.add(trainEnt.getTitle() + ":" + trainEnt.getDescription() );*/
                	lstResults.add(trainEnt.getTitle());
                }
            }
        } catch (IOException e) {
            System.err.println("Error");
        }
        return lstResults;
    }

    private TrainingEntity getTraining(Lookup.LookupResult result)
    {
        try {
            BytesRef payload = result.payload;
            if (payload != null) {
                ByteArrayInputStream bis = new ByteArrayInputStream(payload.bytes);
                ObjectInputStream in = new ObjectInputStream(bis);
                TrainingEntity p = (TrainingEntity) in.readObject();
                return p;
            } else {
                return null;
            }
        } catch (IOException|ClassNotFoundException e) {
            throw new Error("Could not decode payload :(");
        }
    }

    RAMDirectory index_dir;
    StandardAnalyzer analyzer;
    AnalyzingInfixSuggester suggester;
    
    @PostConstruct
    public void init(){
    	index_dir = new RAMDirectory();
        analyzer = new StandardAnalyzer();
        ArrayList<TrainingEntity> trainings = new ArrayList<TrainingEntity>(); //This should be replaced with code to load all the traning from DB
        TrainingEntity training1 = new TrainingEntity("Spring Framework", "java,spring,framework,advance", "Spring Framework is a Java Framework and developed in java which is based on principle of IOC", "programming,technology", 1);
        TrainingEntity training2 = new TrainingEntity("Hibernate", "hibernate,java,orm,orm tool,framework,database tool", "Hibernate is a java framework which is called as ORM tool that is Object Relational Mapping tool", "programming,technology", 2);
        TrainingEntity training3 = new TrainingEntity("Personaliy Developement", "communication,speaking,personality,self developement", "In Personality Developement several things will taugh how to talk how to behave so you can develope your personality and impress all ur peoples around you", "communication", 3);
        trainings.add(training1);
        trainings.add(training2);
        trainings.add(training3);
        try {
			suggester = new AnalyzingInfixSuggester(index_dir, analyzer);
			suggester.build(new TrainingIterator(trainings.iterator()));
		} catch (IOException e) {			
			e.printStackTrace();
		}
    }
    
    public List<String> doAutoSuggest(String inputStr) {
    	init();
    	return initLookup(suggester, inputStr);
    }	
}
