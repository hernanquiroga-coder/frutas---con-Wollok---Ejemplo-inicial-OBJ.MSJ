/* 
  UNIVERSIDAD NACIONAL DE HURLINGHAM
  INSTITUTO DE TECNOLOGIA E INGENIERÍA
  PROGRAMACIÓN CON OBJETOS 1 
  -----------------------------------------
  Objeto / Mensaje / Definiciones iniciales
  -----------------------------------------
*/

// Frutas y otros comestibles 

    object banana {
    method deQueColorSos() = 'amarilla'
    method azucar() = 2     // debe ser un numero, para respetar la operacion nativa
    method precio() = mandarina.precio() * 2
    }

    object morron {
    method azucar() = 0
    method precio() = 100
    }

    object mandarina {
        var tiempo = 0
        method sosDulce() = tiempo < 10
        method pasarUnTiempoDeterminado() {
        tiempo = tiempo + 4
        }
        method pasarElTiempoDe(_dias) {
        tiempo = tiempo + _dias
        }
        method azucar() = 10 - tiempo       // una cuenta facil ... podria ser otra
        method precio() = tiempo * 10
    }

// El personaje de la historia

    object cachito {
        const alimentoPreferido = banana
        var felicidad = 5       // Se mide de la escala de 1 al 10, ponele ...
        
        method comer(_unaComida) {
            felicidad = felicidad + _unaComida.azucar()
        }
        method felicidad() = felicidad
        method darseUnGusto() {
        self.comer(alimentoPreferido)
        }
        method comprar() {
            banco.debitar(alimentoPreferido.precio())
        }
    }

// El banco que tiene nuestro amigo Cachito

    object banco {
        var saldo = 1000

        method debitar(_monto) {
            saldo = saldo - _monto
        }
    }