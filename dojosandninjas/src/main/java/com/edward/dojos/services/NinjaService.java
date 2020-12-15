package com.edward.dojos.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edward.dojos.models.Ninja;
import com.edward.dojos.repositories.NinjaRepository;

@Service
public class NinjaService {

	@Autowired
	private NinjaRepository ninjaRepo;
	
	// get all
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	
	// find by id
	public Ninja findById(Long id) {
		Optional<Ninja> ninja = ninjaRepo.findById(id);
		
		if(ninja.isPresent()) {
			return ninja.get();
		}else {
			return null;
		}
	}
	
	// create and update
	public Ninja save(Ninja ninja) {
		return ninjaRepo.save(ninja);
	};
	
	
	// delete
	public void delete(Long id) {
		ninjaRepo.deleteById(id);
	}
	
	
}
