package com.searchmytraining.enquiry.training;

import java.io.UnsupportedEncodingException;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.apache.lucene.search.suggest.InputIterator;
import org.apache.lucene.util.BytesRef;

import com.searchmytraining.entity.TrainingEntity;

public class TrainingIterator implements InputIterator {

	private Iterator<TrainingEntity> trainIterator;
	private TrainingEntity currTraining;
	
	TrainingIterator(Iterator<TrainingEntity> trainIterator){
		this.trainIterator = trainIterator;
	}
	
	public BytesRef next(){
		if(trainIterator.hasNext()){
			currTraining = trainIterator.next();
			try{
				return new BytesRef((currTraining.getTitle()+currTraining.getKeyWords()).getBytes("UTF8"));
			}catch(UnsupportedEncodingException ex){
				throw new Error("Not able to convert to UTF8");
			}
		}else{
			return null;
		}
	}

	public boolean hasContexts() {
		return true;
	}
	
	public Set<BytesRef> contexts() {
		try {
            Set<BytesRef> addlParams = new HashSet<BytesRef>();
            addlParams.add(new BytesRef(currTraining.getDescription().getBytes("UTF8")));
            return addlParams;
        } catch (UnsupportedEncodingException e) {
            throw new Error("Couldn't convert to UTF-8");
        }
	}

	public boolean hasPayloads() {
		return true;
	}

	public BytesRef payload() {
		try{
			return new BytesRef(currTraining.getDescription().getBytes("UTF8"));
		}catch(UnsupportedEncodingException ex){
			throw new Error("Not able to convert to UTF8");
		}
	}

	public long weight() {
		return currTraining.getPriority();
	}
	
	 public Comparator<BytesRef> getComparator() {
	        return null;
	    }

}
