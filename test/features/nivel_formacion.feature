Feature: Validate API responses
  PROGRAMA_ACADEMICO_CRUD
  probe JSON responses


Scenario Outline: To probe route code response /nivel_formacion
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"

  Examples:
  |method|route              |bodyreq               |codres       |
  |GET   |/v1/nivel_formacion|./files/req/Vacio.json|200 OK       |
  |GET   |/v1/nivel_formacio |./files/req/Vacio.json|404 Not Found|
  |POST  |/v1/nivel_formacio |./files/req/Vacio.json|404 Not Found|
  |PUT   |/v1/nivel_formacio |./files/req/Vacio.json|404 Not Found|
  |DELETE|/v1/nivel_formacio |./files/req/Vacio.json|404 Not Found|


Scenario Outline: To probe response route /nivel_formacion
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"
  And the response should match json "<bodyres>"

  Examples:
  |method|route          |bodyreq               |codres         |bodyres                |
  |GET   |/v1/nivel_formacion|./files/req/Vacio.json|200 OK         |./files/res2/Vok1.json |
  |POST  |/v1/nivel_formacion|./files/req/Yt1.json  |201 Created    |./files/res2/Vok2.json |
  |POST  |/v1/nivel_formacion|./files/req/Vacio.json|400 Bad Request|./files/res2/Ierr1.json|
  |POST  |/v1/nivel_formacion|./files/req/Nt1.json  |400 Bad Request|./files/res2/Ierr2.json|
  |POST  |/v1/nivel_formacion|./files/req/Nt2.json  |400 Bad Request|./files/res2/Ierr3.json|
  |POST  |/v1/nivel_formacion|./files/req/Nt3.json  |400 Bad Request|./files/res2/Ierr4.json|
  |POST  |/v1/nivel_formacion|./files/req/Nt4.json  |400 Bad Request|./files/res2/Ierr5.json|
  |POST  |/v1/nivel_formacion|./files/req/Nt5.json  |400 Bad Request|./files/res2/Ierr6.json| 
  |POST  |/v1/nivel_formacion|./files/req/Nt6.json  |400 Bad Request|./files/res2/Ierr7.json| 
  |POST  |/v1/nivel_formacion|./files/req/Yt2.json  |400 Bad Request|./files/res2/Ierr8.json| 
  |PUT   |/v1/nivel_formacion|./files/req/Yt2.json  |200 OK         |./files/res2/Vok2.json |
  |GETID |/v1/nivel_formacion|./files/req/Vacio.json|200 OK         |./files/res2/Vok2.json |
  |DELETE|/v1/nivel_formacion|./files/req/Vacio.json|200 OK         |./files/res2/Ino.json  |
  |DELETE|/v1/nivel_formacion|./files/req/Vacio.json|404 Not Found  |./files/res2/Ierr9.json|
