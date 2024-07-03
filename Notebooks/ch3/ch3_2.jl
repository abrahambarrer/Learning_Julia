### A Pluto.jl notebook ###
# v0.19.43

using Markdown
using InteractiveUtils

# ╔═╡ 42533050-395b-11ef-22be-83fa5ea35fe9
md"""
# Package System
"""

# ╔═╡ 9e41e1e6-462d-4ab8-bfd0-73b16f5df641
md"""
Al iniciar REPL podemos cambiar de modo para acceder al administrador de paquetes con `]`. El modo Pkg nos indica el *environment* en que nos encontramos. El ambiente por default viene con la instalación de Julia.
"""

# ╔═╡ ac9974ba-c1d1-49ac-b7ea-86a20039679f
md"""
## Cambiar de environment
"""

# ╔═╡ 02af123f-36de-4417-a394-deaedeb32778
md"""
Para cambiar de ambiente utlizamos los siguientes comandos. Para activar el directorio actual (donde se inició el REPl) utlizamos:
```julia
activate.
```
Para activar una ruta específica utilizamos:
```julia
activate path
```
Para activar el ambiente por default:
```julia
activate
```
"""

# ╔═╡ 1e7cf772-7e9c-4054-8da5-234bf7906c17
md"""
## Comandos básicos
"""

# ╔═╡ bc7dd0ea-b83a-404c-b41b-355dae86fcb2
md"""
### `add`
Para añadir un package se utiliza
```julia
add PACKAGE 
```
Se añade un paquete en la sesión.
>💡Cuando diferentes proyectos utilizan la misma versión de un paquete, tal paquete solo se almacena una vez en el disco. El comando `add` **descarga y precompila el paquete, si no existía previamente, y registra el paquete como una dependencia del ambiente actual**.
"""

# ╔═╡ 3e81b89f-86b8-48da-bb33-cb082e4028da
md"""
### `st`
El comando `st` (status) muestra los paquetes instalados.
```julia
st
```
"""

# ╔═╡ 5ad4d898-fd3c-4dec-9498-27cffe5a9c90
md"""
### `up`
Para actualizar los paquetes instalados se utiliza `up`.
```julia
up
```
"""

# ╔═╡ 9354158f-0142-4aa7-b2b7-c95b0237fe20
md"""
### `rm`
El comando `rm` se utiliza para remover un paquete instalado.
```julia
rm PACK1 ...
```
>💡El comando elimina el paquete de la lista de dependencias del ambiente, pero no elimina los archivos. El *garbage collector* automático de Julia se encarga de eliminar archivos que no sean dependencias de otro proyecto y no se hayan utilizado en alrededor de 30 días.
"""

# ╔═╡ 58e1ac7f-4e6f-493d-a621-4f9158bf523d
md"""
## Naturaleza de un paquete
Un paquete es en realidad un módulo de Julia asociado con un *Project.toml* file. El archivo que los contiene se despliega como sigue:
>`Project.toml`
>
>`src` > `SomePackage.jl`
Junto al archivo `.toml` se encuentra un directorio `src` con un archivo `.jl` nombrado como el paquete. En el archivo se define un módulo con el nombre del paquete:
```julia
module SomePackage
...
end
```
Asimismo, tal estructura se suele almacenar en un directorio con el nombre del paquete, pero no es estrictamente necesario.

Se puede pensar en un paquete como un ambiente con un módulo dentro.
"""

# ╔═╡ 265ce222-1d19-4c43-a9e0-9f1df835226f
md"""
## Environment
Un environment es en realidad un lugar que almacena un archivo `Project.toml` y `Manifest.toml`. El `Project.toml` debe contener los siguientes campos:
```julia
name = ...
uuid = ... # Identificador
authors = ...
version = ...
```
Conforme se añadan dependencias al ambiente con el comando `add` se crea `Manifest.toml` que contiene el grafo con todas las dependencias.
"""

# ╔═╡ 145f8e1a-f87f-4812-ab63-3c470d5bcb31
md"""
## Load Path
Al usar `import` o `using` Julia busca los paquetes en ciertas direcciones definidas por el vector:
```julia
LOAD_PATH
```
La traducción para estas notaciones se obtiene con la función del módulo `Base`:
```julia
Base.load_path()
```
"""

# ╔═╡ Cell order:
# ╟─42533050-395b-11ef-22be-83fa5ea35fe9
# ╟─9e41e1e6-462d-4ab8-bfd0-73b16f5df641
# ╟─ac9974ba-c1d1-49ac-b7ea-86a20039679f
# ╟─02af123f-36de-4417-a394-deaedeb32778
# ╟─1e7cf772-7e9c-4054-8da5-234bf7906c17
# ╟─bc7dd0ea-b83a-404c-b41b-355dae86fcb2
# ╟─3e81b89f-86b8-48da-bb33-cb082e4028da
# ╟─5ad4d898-fd3c-4dec-9498-27cffe5a9c90
# ╟─9354158f-0142-4aa7-b2b7-c95b0237fe20
# ╟─58e1ac7f-4e6f-493d-a621-4f9158bf523d
# ╟─265ce222-1d19-4c43-a9e0-9f1df835226f
# ╟─145f8e1a-f87f-4812-ab63-3c470d5bcb31
