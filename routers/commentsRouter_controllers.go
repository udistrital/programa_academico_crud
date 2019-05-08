package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:EnfasisController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:MetodologiaController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:NivelFormacionController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:ProgramaAcademicoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"] = append(beego.GlobalControllerRouter["github.com/planesticud/programa_academico_crud/controllers:TitulacionController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

}
