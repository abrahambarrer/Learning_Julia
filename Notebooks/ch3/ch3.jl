### A Pluto.jl notebook ###
# v0.19.43

using Markdown
using InteractiveUtils

# ╔═╡ 7cf14030-142c-416a-8488-5f8d93b75c20
md"""
# Paquetes y módulos
"""

# ╔═╡ e997e7a7-0ba3-41b3-bd08-88f1203f700c
md"""
Los módulos son archivos de programas que contienen código útil. Los paquetes son conjuntos de módulas con funcionalidades similares. Las librerías son conjuntos de paquetes.

En Julia los módulos requieren de exportar ciertos nombres para poder usarlos dentro de otro ambiente.
"""

# ╔═╡ 87de80fb-95cb-41dd-9103-ff2015d2f75f
md"""
## Namespace
"""

# ╔═╡ 58b64718-ef59-4531-843f-9929f72c559a
md"""
Un *namespace* es un conjunto de nombres reservados en un programa. Así, por ejemplo, los nombres reservados en un módulo difieren de los nombres de otro módulo. Al trabajar en REPL se considera que estamos en el *global namespace*.
>💡Para acceder a nombres de objetos que pertenecen a otro namespace del actual, utilizamos un *qualified name*, por ejemplo si `a` se encuentra en el namespace `Something`, el nombre es `Something.a`.
"""

# ╔═╡ cfe7f29f-1a05-46cf-8acd-b228daa8dca3
md"""
## Módulos
"""

# ╔═╡ 353a6f62-4541-4555-adec-5beeba67b9d3
md"""
Para utilizar módulos *previamente instalados* en Julia, podemos utilizar las siguientes opciones.
"""

# ╔═╡ 00ee1259-efda-4be6-93ca-c76e4d15efa0
md"""
### `using`
La sentencia `using` pone en disponibilidad todos los nombres exportados del módulo en el namespace actual.
```julia
using Module1, ...
```
No hay necesidad de utilizar nombres calificados ya que se encuentran dentro de nuestro namesapce, sin embargo, Julia lanzará error si creamos un nuevo objeto con un nombre ya utilizado.

Los nombres que no se han exportado en el módulo aún pueden utilizarse mediante un nombre calificado.
```julia
Module.object
```
"""

# ╔═╡ 07137ac6-8a16-4fc8-95c0-1a14a1238352
md"""
### `import`
La sentencia `import` pone en disponibilidad todos los nombres, pero siempre requiere de un nombre calificado.
```julia
import Module1, ...
```
"""

# ╔═╡ 3e90f20f-dda3-4c24-a0bf-c14e93da9cf3
md"""
### Renombrar
se puede renombrar un módulo con el keyword `as`. Por ejemplo:
```julia
import Module as NewName
```
Todas las referencias al módulo requerirán de `NewName`. También es posible renombrar algún objeto del módulo:
```julia
import Module: object as NewName
```
"""

# ╔═╡ e8dc7016-cd0f-4195-9d41-397d4e295ba4
md"""
## Creando módulos
Un módulo puede definirse mediante varios archivos y un archivo puede contener varios módulos. Un módulo se encuentra en un bloque:
```julia
module NameModule
	code
end
```
Tenemos las siguientes consideraciones:
* Las indentaciones se comprimen en un archivo.
* Cada definición dentro del módulo, y exterior a otros bloques, se considera global al módulo.

>💡En Julia *siempre* estamos en un módulo. El módulo a nivel más alto se denomina `Main`.

Además, la notación con puntos empieza a ser similar a los sistemas UNIX. Por ejemplo, sea M1 un módulo en el *Main Module*:
```julia
import .M1
```
La sentencia indica que se importa el módulo `M1` a nivel de `Main`. Siguiendo, sea `M2` un módulo definido dentro de `M1`:
```julia
module M2
	...
	import ..M1
	...
end
```
La sentencia indica que se importa `M1`, que se encuentra un nivel superior al nivel de `M2`. Para importar `M2` en el nivel `Main`:
```julia
import .M1.M2
```
Importar `M2`, que pertenece al namespace de `M1` en el nivel `Main`.
"""

# ╔═╡ 990341b3-a822-4a75-b13c-89bd7457133c
md"""
## Documentando con Docstrings
Al crear un módulo se exportan los nombres deseados preferentemente en la línea más superior del módulo.
```julia
module Name
	export object1, ...
	...
```
Se puede documentar un módulo con el sistema Docstring, que comprende una version de Markdown. Para documentar, se utilizan tres comillas dobles antes de la definición de una función:
```julia
module Name
export ...

\"\"\"
Markdown
\"\"\"

function f()
	...
end

end
```
"""

# ╔═╡ Cell order:
# ╟─7cf14030-142c-416a-8488-5f8d93b75c20
# ╟─e997e7a7-0ba3-41b3-bd08-88f1203f700c
# ╟─87de80fb-95cb-41dd-9103-ff2015d2f75f
# ╟─58b64718-ef59-4531-843f-9929f72c559a
# ╟─cfe7f29f-1a05-46cf-8acd-b228daa8dca3
# ╟─353a6f62-4541-4555-adec-5beeba67b9d3
# ╟─00ee1259-efda-4be6-93ca-c76e4d15efa0
# ╟─07137ac6-8a16-4fc8-95c0-1a14a1238352
# ╟─3e90f20f-dda3-4c24-a0bf-c14e93da9cf3
# ╟─e8dc7016-cd0f-4195-9d41-397d4e295ba4
# ╟─990341b3-a822-4a75-b13c-89bd7457133c
