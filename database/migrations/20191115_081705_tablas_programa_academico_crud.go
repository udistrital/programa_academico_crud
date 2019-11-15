package main

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/astaxie/beego/migration"
)

// DO NOT MODIFY
type TablasProgramaAcademicoCrud_20191115_081705 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &TablasProgramaAcademicoCrud_20191115_081705{}
	m.Created = "20191115_081705"

	migration.Register("TablasProgramaAcademicoCrud_20191115_081705", m)
}

// Run the migrations
func (m *TablasProgramaAcademicoCrud_20191115_081705) Up() {
	// use m.SQL("CREATE TABLE ...") to make schema update
	file, err := ioutil.ReadFile("../scripts/20191115_081705_tablas_programa_academico_crud.up.sql")

	if err != nil {
		// handle error
		fmt.Println(err)
	}

	requests := strings.Split(string(file), ";")

	for _, request := range requests {
		fmt.Println(request)
		m.SQL(request)
		// do whatever you need with result and error
	}

}

// Reverse the migrations
func (m *TablasProgramaAcademicoCrud_20191115_081705) Down() {
	// use m.SQL("DROP TABLE ...") to reverse schema update
	file, err := ioutil.ReadFile("../scripts/20191115_081705_tablas_programa_academico_crud.down.sql")

	if err != nil {
		// handle error
		fmt.Println(err)
	}

	requests := strings.Split(string(file), ";")

	for _, request := range requests {
		fmt.Println(request)
		m.SQL(request)
		// do whatever you need with result and error
	}

}
