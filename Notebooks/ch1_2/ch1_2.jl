### A Pluto.jl notebook ###
# v0.19.42

using Markdown
using InteractiveUtils

# ╔═╡ 89403d00-2d8a-11ef-39da-5db03aa50aa7
md"""
# Empezando en Julia
Esta es una introducción a Julia desde los libros. ¡Vamos a empezar!
## Impresión
Para imprimir un mensaje utilizamos la función `print` o `println`
```julia
println("Hola, Julia") # Imprimir mensaje con salto de linea
```
"""

# ╔═╡ b1037793-ac5b-4930-841a-2b214806fd1e
println("Hola, Julia")

# ╔═╡ d33d5d5e-d4df-480c-b305-01a3113bd7ac
md"""
Vamos a escribir una función con la siguiente sintáxis:
```julia
function name()
	code
end
```
Ejemplo:
"""

# ╔═╡ 79d4895c-4dfe-4d38-be26-dbf55ec3a8b8
begin
	function welcome()
		println("Saludo con funcion...")
	end
	
	welcome() # Llamando a la funcion...
end

# ╔═╡ 26188e59-e6d5-410f-a55b-70d53e31145c
md"""
### Input
Para recibir un `input` desde la consola utilizamos la función `readline`:
```julia
readline() # Leer información de consola
```
En `Pluto` no podemos utilizar esta función.
### `Placeholder`
Para utilizar el valor *real* de una variable al imprimir, utilizamos el operador `$`:
```julia
var = ... # Variable
println("Mi variable: $var") # Imprimir el valor real de var
```
Ejemplo:
"""

# ╔═╡ 1560ec06-b10a-40de-9312-de05f42a688d
begin
	a = 5
	b = 10
	println("$a + $b = $(a + b)")
end

# ╔═╡ 5c34c845-b21e-4f5a-8451-03d645172bbc
md"""
Para ver el tipo de variable que ha sido declarada, utilizamos la función `typeof`:
"""

# ╔═╡ 5453c46f-033e-4356-82c7-01e1be8499be
println("La variable a es de tipo $(typeof(a))")

# ╔═╡ da63708a-f6f8-479e-a3d5-04f8ea299fee
md"""
Para referirnos a una variable simbólica utilizamos la palabra `cons`. Las constantes inician en mayúscula.
```julia
cons Var = (...) # Constante
```
"""

# ╔═╡ Cell order:
# ╟─89403d00-2d8a-11ef-39da-5db03aa50aa7
# ╟─b1037793-ac5b-4930-841a-2b214806fd1e
# ╟─d33d5d5e-d4df-480c-b305-01a3113bd7ac
# ╠═79d4895c-4dfe-4d38-be26-dbf55ec3a8b8
# ╟─26188e59-e6d5-410f-a55b-70d53e31145c
# ╠═1560ec06-b10a-40de-9312-de05f42a688d
# ╟─5c34c845-b21e-4f5a-8451-03d645172bbc
# ╠═5453c46f-033e-4356-82c7-01e1be8499be
# ╟─da63708a-f6f8-479e-a3d5-04f8ea299fee
