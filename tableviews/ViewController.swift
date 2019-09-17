//
//  ViewController.swift
//  tableviews
//
//  Created by MaestroD1 on 9/13/19.
//  Copyright © 2019 MaestroD1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Ana", apellido: "García", matricula: "ABC123"))
        alumnos.append(Alumno(nombre: "Jose", apellido: "Lopez", matricula: "XYZ123"))
        alumnos.append(Alumno(nombre: "Maria", apellido: "Perez", matricula: "YGH745"))
        
        alumnos.append(Alumno(nombre: "Pedro", apellido: "Gonzalez", matricula: "UJL456", correo: "pedro@correo.com"))
    }
    
    //Numero de secciones (siempre 1)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    //Contenido de cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        
        
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblApellidos.text =
            alumnos[indexPath.row].apellido
        celda?.lblMatricula.text =
            alumnos[indexPath.row].matricula
        celda?.lblCorreo.text =
            alumnos[indexPath.row].correo
        
        return celda!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (alumnos[indexPath.row].correo != nil ) {
            return 120
        }
        return 78
    }
    

}

