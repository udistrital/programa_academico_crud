// @APIVersion 1.0.0
// @Title beego Test API
// @Description beego has a very cool tools to autogenerate documents for your API
// @Contact astaxie@gmail.com
// @TermsOfServiceUrl http://beego.me/
// @License Apache 2.0
// @LicenseUrl http://www.apache.org/licenses/LICENSE-2.0.html
package routers

import (
	"github.com/planesticud/programa_academico_crud/controllers"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/v1",

		beego.NSNamespace("/metodologia",
			beego.NSInclude(
				&controllers.MetodologiaController{},
			),
		),

		beego.NSNamespace("/nivel_formacion",
			beego.NSInclude(
				&controllers.NivelFormacionController{},
			),
		),

		beego.NSNamespace("/titulacion",
			beego.NSInclude(
				&controllers.TitulacionController{},
			),
		),

		beego.NSNamespace("/programa_academico",
			beego.NSInclude(
				&controllers.ProgramaAcademicoController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
