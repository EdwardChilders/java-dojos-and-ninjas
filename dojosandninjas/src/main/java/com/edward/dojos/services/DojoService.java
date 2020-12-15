package com.edward.dojos.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edward.dojos.models.Dojo;
import com.edward.dojos.repositories.DojoRepository;

@Service
public class DojoService {
	@Autowired
	private DojoRepository dojoRepo;
	
	// get all
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	//find by id
	public Dojo findById(Long id) {
		Optional<Dojo> dojo = dojoRepo.findById(id);
		
		if(dojo.isPresent()) {
			return dojo.get();
		}else {
			return null;
		}
	}
	
	// create and update
	public Dojo save(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	//delete
	public void delete(Long id) {
		dojoRepo.deleteById(id);
	}
}
