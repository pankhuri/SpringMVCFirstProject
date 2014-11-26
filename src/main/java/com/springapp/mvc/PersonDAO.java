package com.springapp.mvc;

/**
 * Created by pankhurikaushik on 26/11/14.
 */
import java.util.List;

import com.springapp.mvc.Person;

public interface PersonDAO {

    public void save(Person p);

    public List<Person> list();

}
