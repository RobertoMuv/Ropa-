/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.velaroberto.ropa;

import com.velaroberto.web.Mensajes;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;

/**
 *
 * @author Roberto MuVe
 */
@Named
@RequestScoped
public class CtrlRopas {

    @Inject
    private Mensajes mensajes;
    @Inject
    private DaoRopa dao;
    private List<Ropa> instancias;

    @PostConstruct
    void init() {
        try {
            instancias = dao.consulta();
        } catch (Exception ex) {
            mensajes.procesa(ex);
        }
    }
    
    public List<Ropa> getInstancias() {
        return instancias;
    }  
}
