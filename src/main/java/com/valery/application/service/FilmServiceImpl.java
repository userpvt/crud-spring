package com.valery.application.service;

import com.valery.application.dao.FilmDAO;
import com.valery.application.model.Film;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
@Service
public class FilmServiceImpl implements FilmService {

    private FilmDAO filmDAO;

    @Override
    @Transactional
    public void add(Film film) {
        filmDAO.add(film);
    }


    @Autowired
    public void setFilmDAO(FilmDAO filmDAO) {
        this.filmDAO = filmDAO;
    }

    @Override
    @Transactional
    public List<Film> allFilms() {
        return filmDAO.allFilms();
    }


    @Override
    @Transactional
    public void delete(Film film) {
        filmDAO.delete(film);
    }

    @Override
    @Transactional
    public void edit(Film film) {
        filmDAO.edit(film);
    }

    @Override
    @Transactional
    public Film getById(int id) {
        return filmDAO.getById(id);
    }
}
