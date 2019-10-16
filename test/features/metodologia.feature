Feature: Validate API responses
  PROGRAMA_ACADEMICO_CRUD
  probe JSON responses


Scenario Outline: To probe route code response /metodologia
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"

  Examples:
  |method|route          |bodyreq               |codres       |
  |GET   |/v1/metodologia|./files/req/Vacio.json|200 OK       |
  |GET   |/v1/metodologi |./files/req/Vacio.json|404 Not Found|
  |POST  |/v1/metodologi |./files/req/Vacio.json|404 Not Found|
  |PUT   |/v1/metodologi |./files/req/Vacio.json|404 Not Found|
  |DELETE|/v1/metodologi |./files/req/Vacio.json|404 Not Found|


Scenario Outline: To probe response route /metodologia
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"
  And the response should match json "<bodyres>"

  Examples:
  |method|route          |bodyreq               |codres         |bodyres                |
  |GET   |/v1/metodologia|./files/req/Vacio.json|200 OK         |./files/res1/Vok1.json |
  |POST  |/v1/metodologia|./files/req/Yt1.json  |201 Created    |./files/res1/Vok2.json |
  |POST  |/v1/metodologia|./files/req/Vacio.json|400 Bad Request|./files/res1/Ierr1.json|
  |POST  |/v1/metodologia|./files/req/Nt1.json  |400 Bad Request|./files/res1/Ierr2.json|
  |POST  |/v1/metodologia|./files/req/Nt2.json  |400 Bad Request|./files/res1/Ierr3.json|
  |POST  |/v1/metodologia|./files/req/Nt3.json  |400 Bad Request|./files/res1/Ierr4.json|
  |POST  |/v1/metodologia|./files/req/Nt4.json  |400 Bad Request|./files/res1/Ierr5.json|
  |POST  |/v1/metodologia|./files/req/Nt5.json  |400 Bad Request|./files/res1/Ierr6.json| 
  |POST  |/v1/metodologia|./files/req/Nt6.json  |400 Bad Request|./files/res1/Ierr7.json| 
  |POST  |/v1/metodologia|./files/req/Yt2.json  |400 Bad Request|./files/res1/Ierr8.json| 
  |PUT   |/v1/metodologia|./files/req/Yt2.json  |200 OK         |./files/res1/Vok2.json |
  |GETID |/v1/metodologia|./files/req/Vacio.json|200 OK         |./files/res1/Vok2.json |
  |DELETE|/v1/metodologia|./files/req/Vacio.json|200 OK         |./files/res1/Ino.json  |
  |DELETE|/v1/metodologia|./files/req/Vacio.json|404 Not Found  |./files/res1/Ierr9.json|
