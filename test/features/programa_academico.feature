Feature: Validate API responses
  PROGRAMA_ACADEMICO_CRUD
  probe JSON responses


Scenario Outline: To probe route code response /programa_academico
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"

  Examples:
  |method|route                 |bodyreq               |codres       |
  |GET   |/v1/programa_academico|./files/req/Vacio.json|200 OK       |
  |GET   |/v1/programa_academic |./files/req/Vacio.json|404 Not Found|
  |POST  |/v1/programa_academic |./files/req/Vacio.json|404 Not Found|
  |PUT   |/v1/programa_academic |./files/req/Vacio.json|404 Not Found|
  |DELETE|/v1/programa_academic |./files/req/Vacio.json|404 Not Found|


Scenario Outline: To probe response route /programa_academico
  When I send "<method>" request to "<route>" where body is json "<bodyreq>"
  Then the response code should be "<codres>"
  And the response should match json "<bodyres>"

  Examples:
  |method|route                 |bodyreq               |codres         |bodyres                |
  |GET   |/v1/programa_academico|./files/req/Vacio.json|200 OK         |./files/res3/Vok1.json |
  |POST  |/v1/programa_academico|./files/req/Vacio.json|400 Bad Request|./files/res3/Ierr1.json|
