### A Pluto.jl notebook ###
# v0.19.42

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ c935b47d-dc93-40be-b85c-44f9e9a3a541
using PlutoUI

# ╔═╡ 5a418c70-2e3e-11ef-2f1a-59c218c011b9
md"""
# Básicos
En esta sección se expresan algunos temas básicos en el uso de `Julia`.
## Tipos de números
En `Julia` hay diferentes tipos de números. Por default se almacenan en 64 bits (si el ordenador es de 64 bits).
* `int`: números enteros.
* `float`: números con punto flotante.
* `complex`: números con parte imaginaria. Pueden ser int o float.
Veamos a los números enteros:
"""

# ╔═╡ fb4cb259-2eb4-490d-94fe-ec2b4bd18cd6
print(5)

# ╔═╡ d7a8affc-2d79-47a7-ad25-bd451087d5b5
md"""
Un número con punto flotante puede escribirse en notación científica con la notación habitual:
```julia
5.0e2 # 500.0
```
Los números escritos en notación científica siempre son `float`.
"""

# ╔═╡ ef9c16d5-1973-4412-9eb7-335a572225f8
print(5.0e2)

# ╔═╡ ba0b32e1-d61d-4965-a24d-2698e6a10d48
md"""
Los números complejos se escriben como un número imaginario sumado a otro número.
```julia
2 + 3im # Imaginario
```
"""

# ╔═╡ 0575cc73-065f-4778-ac94-ec7e624d27ad
print(2+3im)

# ╔═╡ c696e2cb-25e7-48cf-8948-02012045229c
md"""
>💡En Julia los números siempre tienen la prioridad dependiendo de qué tipo de números involucran. Por ejemplo sumar un `int` y un `float` devuelve `float`.
"""

# ╔═╡ ec03a30e-8ce6-4d45-b4a6-415e6156d9c8
md"""
## Operaciones ariméticas
Las operaciones aritméticas funcionan de manera habitual. Sea `a=10` y `b=5`:
"""

# ╔═╡ 7e361a66-404a-470a-8ca3-d0fe571bb843
begin
	a = 10
	b = 5
	println("$a + $b = $(a+b)") # Suma
	println("$a - $b = $(a-b)") # Resta
	println("$a * $b = $(a*b)") # Multiplicacion
	print("$a % $b = $(a%b)") # Modulo
end

# ╔═╡ 5eb6d771-5717-4d08-b905-5ded2c68c75f
md"""
>💡Una multiplicación por una constante puede escribirse de manera contigua, sin usar el operador `*`.
"""

# ╔═╡ 4bc36635-22f5-4f5f-9b0e-73b09b83b231
print("2a = $(2a)")

# ╔═╡ 56565cfd-c48c-4dee-b276-88a64ada2c9c
md"""
### División
Hay tres tipos de divisiones. La **división exacta** se consigue con el operador `/`:
"""

# ╔═╡ 9ac37e3c-206e-49bc-b1db-37e3acb38ec0
print("$a / $b = $(a/b)")

# ╔═╡ 1e1dcbd1-2d9a-4970-82fa-ff5b8a8eaa31
md"""
La **división entera** se consigue con el operador `\div = ÷`:
"""

# ╔═╡ fa83edfb-791b-4403-af4c-3b70e0344638
print("$a ÷ $b = $(a ÷ b)")

# ╔═╡ ca88481a-3714-41d1-bba8-6d703f14ec4e
md"""
Los **números racionales** también pueden expresarse para realizar operaciones aritméticas siempre terminando en la expresión mínima.
"""

# ╔═╡ 54e1f9c2-ac3f-409f-90ac-253920dc2b81
print("$(1//2) + $(1//3) = $(1//2 + 1//3)")

# ╔═╡ 751f8d92-ee41-47c0-b0c2-a64bbba3814e
md"""
### Potenciación
La operación con exponente se consigue con el operador `^`:
"""

# ╔═╡ 684ae170-c9b3-4bb1-aaec-4b612645bc1f
print("2 ^ 4 = $(2^4)")

# ╔═╡ 8aaee7f3-9a1d-476c-9e66-8ca7f7967e67
md"""
Algunas operaciones pueden dar lugar al tipo `Inf`:
"""

# ╔═╡ 4452c6d0-53db-40a3-85fe-127eb1f52de3
begin
	println("1 / 0 = $(1/0)")
	println("1 // 0 = $(1//0)")
	println("0^-1 = $(0 ^ -1)")
end

# ╔═╡ bc44740f-3078-4bfc-a66c-fd83a4e2eb0c
md"""
## Cadenas de expresiones
Una expresion se puede separar mediante `;`. Siempre se toma en cuenta el último resultado.
"""

# ╔═╡ 0c1cd245-1d93-4a7b-a7f4-3a293bcd1385
2; 4; 8

# ╔═╡ ec29af2e-2eec-4580-b00c-cd9109840ebe
md"""
## Bloques
Para escribir varias líneas de código se utiliza el formato:
```julia
begin
	code
end
```
"""

# ╔═╡ 9ee0b92e-e1ff-4636-8014-71c6e4c7c391
md"""
## Lógica
Las expresiones lógicas del tipo `AND` y `OR` utilizan los siguientes operadores en *corto circuito*:
```julia
&& # AND
|| # OR
```
Para evaluar expresión bit a bit se utiliza:
```julia
& # AND
| # OR
```
Los operadores lógicos funcionan habitualmente. Con `a = 10` y `b = 5`:
"""

# ╔═╡ 64690511-a2f5-49a8-957c-819d54ca73e8
begin
	println("a == b = $(a==b)")
	println("a != b = $(a!=b)")
	println("a < b = $(a<b)")
	println("a ≤ b = $(a≤b)")
	println("a > b = $(a>b)")
	println("a ≥ b = $(a≥b)")
end

# ╔═╡ 8fab1dc8-6f44-4c42-ac77-6bafec983319
md"""
El operador `==` compara el valor de los operandos. Para hacer una comparación *exacta* se hace uso del operador `===`:
"""

# ╔═╡ cf6456f6-09b6-4b42-b2c1-9dfb4ccae0b3
begin
	println("5.0 == 5 = $(5.0 == 5)")
	print("5.0 === 5 = $(5.0 === 5)")
end

# ╔═╡ 513c534d-0f96-410b-97ba-edd93c7494c1
md"""
## Ciclo `while`
El ciclo while ocupa la sintáxis:
```julia
while (bool)
	code
end
```
"""

# ╔═╡ 1570ab3c-d2e8-4a55-b978-1ca56356aa37
begin
	i_1 = 1
	while i_1 <= 5
		print("$i_1 ")
		i_1 = i_1 + 1
	end
end

# ╔═╡ 7a1c2d4f-afd4-4625-8d23-6d1d4fe8de13
md"""
>💡En Julia, las identaciones no tienen un significado real, pero hacen legible el código. Además, un salto de línea es equivalente a `;`, pero tampoco tienen significado real.
"""

# ╔═╡ 29319dd5-fd90-4b23-87fa-41a5a37285cc
md"""
## Sentencia `if`
La sintáxis para la sentencia `if` es:
```julia
if bool1
	...
elseif bool2
	...
else
	...
end
```
Por ejemplo:
"""

# ╔═╡ 89ffcd9e-1e3b-4951-9daa-566dd1cba354
@bind x Slider(0:10)

# ╔═╡ 43c089b0-d911-4aa5-899f-ac97e59dc381
begin
	if x % 2 === 0
		"$x es par"
	else
		"$x es impar"
	end
end

# ╔═╡ ea03d873-7074-499e-84d0-a089dd08576d
md"""
## Arreglos
Los arreglos son colecciones de valores. Los arreglos pueden ser:
* Vectores: una dimensión.
* Matrices dos dimensiones.
*  $n$-dimensionales.
>💡Los arreglos siempre favorecen la unicidad de los tipos de datos que contienen.
"""

# ╔═╡ 6af89dfc-e05e-44d3-86f4-5e6f2802a6fc
md"""
### Vectores
Los vectores son arreglos de una dimensión. P. ej. un vector $\vec{v}$ con tres elementos:
"""

# ╔═╡ 654e832f-242c-4458-9a66-6f4338ed122c
v = [1,2.0,3]

# ╔═╡ c8bdbb54-5c8b-48f0-9a8e-28100fbfa1c4
md"""
Para recuperar los valores del vector, indexamos `v` con corchetes. La palabra `end` refiere al último elemento del arreglo.
>💡En Julia los índices de un arreglo comienzan en 1.
"""

# ╔═╡ b94c4c02-a547-418b-890d-780c87df940c
begin
	println("v[1] = $(v[1])")
	print("v[end] = $(v[end])")
end

# ╔═╡ 13448218-7138-4f06-92f2-b0a02d7c96fe
md"""
Los arreglos también pueden contener arreglos:
"""

# ╔═╡ 70f14168-fb73-4f08-861b-2a94e93f9324
v2 = [1, [2.0, 3.0], 4.0]

# ╔═╡ a5393835-c314-49a7-a58d-f00b0ad25783
md"""
Podemos indexar al arreglo dentro del arreglo:
"""

# ╔═╡ 5fa67cec-29ee-41fc-9388-b5240ec91dcd
print("v2[2][2] = $(v2[2][2])")

# ╔═╡ 57776b6c-4038-4363-9198-8980ff61245d
md"""
>💡Para obtener la longitud de un arreglo utilizamos la función `length`.
"""

# ╔═╡ e6f71fc7-b045-40bb-be16-46e415e7b2cf
print("length(v2) = $(length(v2))")

# ╔═╡ dca8ecf3-a2a4-49b7-a6eb-5b5665e7aade
md"""
## Rangos
Para crear una secuencia de números utilizamos la sintáxis:
```julia
a:b # Rango desde a hasta b, inclusive, con paso 1
a:c:b #Rango desde a hasta b, inclusive, con paso c
```
Los rangos ocupan poco espacio en memoria. Para crear un arreglo con los rangos, utilizamos la función `collect`.
"""

# ╔═╡ 2cb6ed3d-442e-445c-a04e-c4232239fe1f
v3 = collect(10:-2:0)

# ╔═╡ de154e98-21fe-4997-bdfb-f51f79b4491f
md"""
Con los rangos, podemos indexar elementos no contiguos de un arreglo.
"""

# ╔═╡ 8705ff12-6e2a-4586-b079-f31abed72a9c
print("v3[10:-3:0] = $(v3[end:-3:1])")

# ╔═╡ 85d32093-15f0-4521-8af0-88a590da09d2
md"""
### Matrices
Las matrices son arreglos de dos dimensiones. Es posible ingresar una matriz como una tabla utilizando espacios para separar tokens:
```julia
[a11 a12 ... a1n
 a21 a22 ... a2n
 ...............
 am1 am2 ... amn]
```
"""

# ╔═╡ c115273e-5e2c-406b-a56e-37b90af6c070
md"""
Sea $A$ la matriz

$A=\begin{bmatrix}
1 & 2 \\
3 & 4
\end{bmatrix}$
"""

# ╔═╡ 92d5b860-46e7-4060-b897-eca596138daa
A = [1 2 
	3 4]

# ╔═╡ ed2ce7f8-8201-4626-8874-23bd07ece520
md"""
Para recuperar los valores de la matriz utilizamos dos índices:
"""

# ╔═╡ 3e66e06d-6a04-4066-97e3-70059e2ff6e7
print("A[2,2] = $(A[2,2])")

# ╔═╡ 1f769b4e-72c8-4b9c-89ad-a377b16accda
md"""
Para recuperar una fila o columna completa utilizamos el rango `:`
"""

# ╔═╡ 45e1c304-1d83-4aaa-9e20-a4a7cb8112f1
print("A[1,:] = $(A[1, :])")

# ╔═╡ cea6d0dd-b3a7-493f-9f3f-e0816d26ac51
md"""
>💡Los datos en memoria se almacenan de manera contigua. El *column major order* indica que los datos se leen renglon por columna.
"""

# ╔═╡ e2efe94f-3d34-4409-aecb-fd10200fbbeb
A[3]

# ╔═╡ 49262f07-008d-448e-9a0f-b2dd0f42e489
md"""
### Indexar arreglos con arreglos
Es posible indexar un arreglo con un arreglo o número, que reemplazan los índices originales. P. ej., para acceder a la primera columna de `A`
"""

# ╔═╡ 0be3f704-8b77-4de3-be27-52f5ba578609
A[[1,2], 1]

# ╔═╡ ca8cfe35-d525-41ed-834e-c006191b9ee7
md"""
También podemos indexar con un arreglo único, que tiene la misma forma del arreglo que se desea obtener.
```julia
array[subarray]
```
Cada entrada de `subarray` representa un índice según el *column major order*.
"""

# ╔═╡ bc439e8d-9e44-4a6b-ab4f-2beb4899af44
A[[4 3
   2 1]]

# ╔═╡ 005cdaf9-12e3-4b99-ab2f-b71d67e92d35
md"""
### Concatenaciones
En Julia la combinación de vectores da lugar a concatenaciones verticales u horizontales:
* Vertical: se consigue con un `salto de línea` o con `;`. La forma explícita es `vcat`.
* Horizontal: se consigue con `espacio en blanco`. La forma explícita es `hcat`.
Por ejemplo una concatenación horizontal más vertical:
"""

# ╔═╡ 4213657c-66a4-46e4-867f-ad033f2941e2
[[6 7]; [8 9]]

# ╔═╡ 4cb29bc0-31b7-445e-abf5-596a38f14082
md"""
Un caso especial es la concatenación horizontal de dos vectores. Julia convierte los vectores en *vectores columna*, y los concatena horizontalmente para formar una matriz:
"""

# ╔═╡ 6ed6d69e-7881-4df3-ae4d-08d33cf94f72
[[6, 7] [8, 9]]

# ╔═╡ 75ce95ea-de6a-4cb4-ab8e-02248039a9f6
md"""
### Tuplas
Las tuplas son similares a los vectores, salvo que se consideran de distinto tipo y *no pueden ser modificadas*.
```julia
(a, b, ...) # Tupla
```
"""

# ╔═╡ d2a039d4-8d89-40e9-8d7e-90d6983c2372
(1, 2, 3, 4)

# ╔═╡ e683357d-3423-478e-bf80-b5668566fdd3
md"""
>💡Una tupla de 1 elemento debe ser declarada con una coma: `(x,)`.
"""

# ╔═╡ a3506e21-5f46-418e-a80d-addc151f6e0b
md"""
### Pertenencia
Para comprobar si un elemento pertence a una colección, utilizamos el operador ∈, o en su defecto, su negación ∉. Comprobemos si 3 pertenece a $A$:
"""

# ╔═╡ 2f00e838-6438-474d-944c-09a26ee9a4a0
3 ∈ A

# ╔═╡ c8b64122-fad1-48ad-a1f9-78dcba312978
md"""
Comprobemos si 5 *no pertenece a* $A$:
"""

# ╔═╡ 41c94081-32c6-4b0a-8e89-abffac395cda
5 ∉ A

# ╔═╡ 5140b12a-7415-4432-b74d-041b909c6752
md"""
## Cadenas y caractéres
En Julia se distinguen los tipo `string` y `char`:
* `string`: ocupan doble comilla `(" ")`.
* `char`: ocupan comilla simple `(' ')`.
"""

# ╔═╡ b853acab-cdf4-4e27-bdae-8274dc0e25f2
md"""
### `Char`
En Julia, todo símbolo UNICODE puede ser un `Char`. Los caractéres tienen *algunas* características de número, pero no lo son.
>💡Los caractéres en Julia tienen un orden secuencial, por lo que es posible calcular la *distancia entre ellos*, sumar números para obtener un carácter posterior, etc.

Veámos si `'A' < 'a'`:
"""

# ╔═╡ 3900ed8e-7411-47c9-b333-39472c5cc56f
'A' < 'a'

# ╔═╡ 00989ea1-c86d-4625-97ba-c4403df4193a
md"""
¿Qué caracter sucede a `'z'`?
"""

# ╔═╡ 4f98c2b9-ef21-41f1-99e3-0e2b06e70eeb
'z' + 1

# ╔═╡ f3c47133-369d-4234-9cd1-60acf911dc57
md"""
¿Cuál es la distancia entre `'A'` y `'a'`?
"""

# ╔═╡ fef7248f-4499-467e-959f-d2f4ab49b6b8
'a' - 'A'

# ╔═╡ ba4199fb-fcac-4536-aba0-f8bafc4a4095
md"""
### `Strings`
Las cadenas se escriben con comillas dobles. Para concatenar tipos `Char` o `Strings` utilizamos el operador `*`:
"""

# ╔═╡ 57c4870f-aa45-47dc-a069-a876ec6123ea
cadena = "Fran" * "çois"

# ╔═╡ 1ff3d13e-3ab0-44ab-b360-76619a367fcd
md"""
Podemos indexar una cadena, pero no es tan simple. Los caractéres que componen la cadena *podrían* ocupar más de un bit en memoria, e indexar una cadena cuenta bit a bit. Por ejemplo, en `cadena`, el símbolo 'ç´ ocupa dos bits, por lo que el símbolo 'o' ocupa el índice 7:
"""

# ╔═╡ b31de5d1-f96b-4f47-ab3c-b6e22cd993e6
cadena[7]

# ╔═╡ 6431099d-cb6f-4064-b172-18a5f2681ae4
md"""
Podemos preguntar la *pertenencia* de un carácter en una cadena con el operador ∈:
"""

# ╔═╡ c63815ac-87a6-4d8c-9b23-75f5e299e3dd
'ç' ∈ cadena

# ╔═╡ cd24c1d0-15e4-4059-81f8-8354a6888806
md"""
Para preguntar la pertenencia de una cadena en otra, utilizamos la función `occursin`:
"""

# ╔═╡ 9fc27f0b-8eb3-4345-95f8-6254708bf760
occursin("çois", cadena)

# ╔═╡ c61bfe94-8a49-4adc-b6bc-ac3dccb27865
md"""
Para imprimir en consola varias líneas de texto utilizamos tres comillas dobles: 
"""

# ╔═╡ afd7608a-3c18-4fc5-bd18-305d9f6e5f04
print("""
Texto con
varias lineas...
""")

# ╔═╡ f93faa52-b429-465e-bcb3-9b082aea122c
md"""
## Ciclo `for`
El ciclo `for` ocupa la siguiente sintáxis:
```julia
for i in collection
	code
end
```
>💡Alternativamente se puede utilizar el símbolo `=` en lugar del keyword `in`, o, incluso, el símbolo `∈`.
"""

# ╔═╡ b8f214aa-ad94-45c9-8652-bf959e459cdb
for i in 1:5
	print(i)
end

# ╔═╡ fb67f5aa-4267-4485-9383-8f64c28206b4
md"""
Es posible evitar el uso de ciclos anidados añadiendo más índices con su colección. Por ejemplo dos ciclos anidados ocuparía la sintáxis
```julia
for i in collection1, j in collection2
	code
end
```
"""

# ╔═╡ ec21dde4-cfa4-4e71-a472-201ed4af3fe0
for i ∈ 2:-1:1, j ∈ 1:2
	println("$i + $j = $(i+j)")
end

# ╔═╡ 6d8192f8-8143-419e-9b5b-b985dc9b29dc
md"""
Como se menciona, el ciclo `for` puede iterar cualquier colección. Por ejemplo, la matriz $A$:
"""

# ╔═╡ 7b5f9790-a8d6-4785-806f-c6b26306a307
for i ∈ A
	print("$i ")
end

# ╔═╡ 3efc1ae0-f83c-45e8-a9ee-e9eaae0cd393
md"""
El ciclo también itera de manera lícita un `string`:
"""

# ╔═╡ 8bb4d9bd-52e7-42a2-ac2e-a51328ddfd18
for i in cadena
	print("$(i)_")
end

# ╔═╡ 7cd7da11-7bfa-4877-add8-43499af54038
md"""
## Funciones
Las funciones simples en Julia pueden ocupar una sintáxis simple:
"""

# ╔═╡ 1fb31834-5d9b-4fd0-ae5d-3b18e59ecac9
cuadrado(x,) = x ^ 2

# ╔═╡ c8d77f30-f8ac-4ac7-831f-02948250ba81
md"""
Funciones más complejas ocupan la sintáxis
```julia
function name(args)
	code
end
```
Por ejemplo la distancia entre un punto $P(x,y)$ desde el origen:
"""

# ╔═╡ ed2ec0f5-2cb1-4aba-b65e-79b56c9cb3fd
function distancia(x,y)
	sqrt(x^2 + y^2)
end

# ╔═╡ 46b9e609-6379-43e2-a5c9-81b84b804a87
md"""
Las funciones devuelven la última expresión evaluada, o la última sentencia con el operador `return`. Después de `return` la función se detiene.
"""

# ╔═╡ 239013e2-5fbc-4b99-a431-cf5829b9651d
function distancia_positiva(x,y)
	if x < 0 || y < 0
		return "Distancias positivas"
	else
		sqrt(x^2 + y^2)
	end
end

# ╔═╡ 3d064c28-c87b-4cf1-b7d2-0911152a1044
md"""
Las funciones también pueden recibir funciones como argumentos. Por ejemplo, una función que anuncie el resultado de otra función:
"""

# ╔═╡ 59926932-b32c-45d3-a07c-85c20df77b16
function anunciar(f, x)
	print("El resultado es: ")
	f(x)
end

# ╔═╡ 09c6e0c2-011e-4362-87d5-38708cca9df9
md"""
>💡Las *funciones puras* no generan efectos secundarios (crear archivos, imprimir en terminal, descargar de internet).
"""

# ╔═╡ a686e7df-0426-4b5a-af55-f97a1a15abbb
md"""
### Composición de funciones
En Julia podemos realizar composición de funciones como en matemáticas:
"""

# ╔═╡ ef48041c-2906-4cc5-94fd-eead44483b5f
cuadrado(cuadrado(3))

# ╔═╡ 4e124992-bb39-4193-a921-23b3605ba0de
md"""
También se puede utilizar el símbolo ∘:
"""

# ╔═╡ c0754860-4aab-4459-8e28-7f3348c322fe
(cuadrado ∘ cuadrado)(3)

# ╔═╡ 934c0e13-65ee-437c-9e4b-14b91fa6686b
md"""
Una tercera opción indica utiliza |> para indicar cómo funciona el procesamiento (izquierda a derecha):
"""

# ╔═╡ 02122c48-4238-4b93-99fe-501ea48e7bc9
3 |> cuadrado |> cuadrado

# ╔═╡ 131e8c75-3432-47dd-98c7-b57301d5e6b2
md"""
### Funciones *anónimas*
Las funciones anónimas se utilizan cuando una función recibe como argumento otra función. La función interna resulta desechable, pues solo se necesita mientras la función externa esté en cómputo. La sintáxis es:
```julia
(x,y,...)->f(x,y,...) # A (x,y,...) se le asigna el valor definido por f
```
"""

# ╔═╡ 10599100-fe4e-44dd-beb9-5e3a4d13ad4b
md"""
### *Broadcasting* (difusión)
En Julia se incorporó el operador `humble dot`, y se utiliza para conseguir que una función evalúe un arreglo de elementos valor por valor. Sea `f` una función:
```julia
f.[array] # Devuelve [f(array[1]), f(array[2]), ...]
```
Por ejemplo
"""

# ╔═╡ 22f3bd96-9f06-41ae-a95c-2aa2962ce0b1
cuadrado.([1,2,3])

# ╔═╡ 411e281e-a42a-4e04-bef8-a5852380d75c
md"""
## Alcance de variables
Se distinguen las variables globales de las variables locales. Las globales tienen posibilidad de uso en todo el programa.
>💡En un programa como archivo, es recomendable utilizar el keyword `cons` para evitar modificaciones accidentales.
**Todas las variables definidas fuera de un bloque se consideran globales**. Los bloques como `begin` no generan variables locales.
### Alcance en funciones
Hay que tener un cuenta lo siguiente dentro de una función:
* Siempre se utilizará una variable local, si existe. Si no, se utilizará una variable global, si existe.
* *Toda* asignación crea una variable local.
* Si se requiere utilizar una variable global, se utiliza el decorador `global`.
### Alcance en ciclos
Las reglas para los ciclos son las mismas, sin embargo, cuando se incluye un programa desde un archivo que incluye un ciclo con una variable cuyo nombre es igual a una variable global que ya existe, **se lanza un mensaje de advertencia sobre lo que sucede con las variables**.
>💡Soluciones para evitar la ambigüedad son: añadir decoradores como `global` o `local`, o colocar las variables y ciclos dentro de funciones, para evitar la existencia de variables globales.
Cuando se interactúa en el REPL o Pluto, no se lanza ningún mensaje de advertencia. En los entornos interactivos las variables globales son de uso común.
"""

# ╔═╡ 075fdefb-46ff-4b6b-96fd-f81c7a142e7e
md"""
## Mutabilidad
La mutabilidad implica la modificación, cambio o evlución de un objeto. Los arreglos se consideran objetos mutables, ya que son objetos con su propia dirección de memoria, por lo tanto:
"""

# ╔═╡ 7020ea83-aee0-4a66-bb41-35bfa14601fd
begin
	w1 = [1]
	w2 = w1
	w2[1] = 5
	w1 === w2
end

# ╔═╡ 60b29ce7-9c25-449a-b0f4-1f8f89dd9610
md"""
Pero los arreglos sin la misma dirección de memoria, siendo estrictos, son diferentes:
"""

# ╔═╡ e4b78df2-3f19-4e9c-a5ee-7dcc17e4e351
begin
	println("[1] === [1]: $([1] === [1])")
	print("[1] == [1]: $([1] == [1])")
end

# ╔═╡ 85223ae6-b46d-4893-b613-0ee61a1f8f44
md"""
>💡Los números *no* son mutables, ya que no se ubican los números en memoria. Estas variables son nombres, pero no los valores en sí mismos.
### Funciones `push!` y `pop`
Para mutar un vector añadiendo un nuevo elemento se puede utilizar la siguiente sintáxis:
```julia
vector = [vector, a] # Añade a al final del vector
```
Sin embargo, esto es ineficiente para grandes cantidades de datos. En su lugar, utilzamos la función `push!`, que devuelve el arreglo mutado:
```julia
vector = push!(vector, a) # Añade a al final del vector
```
La función opuesta a `push!` es `pop!`, que elimina el último elemento de un vector y devuelve tal elemento.
```julia
pop!(vector) # Devuelve el último elemento
```
### Strings
Los strings son objetos inmutables, es decir, no se pueden modificar directamente. Para manejar un string es buena idea realizar concatenaciones
```julia
string = string * new
```
Es mejor idea realizar concatenaciones con la función `push!`. Para unir elementos de un arreglo de strings se utiliza la función `join`:
```julia
join(arreglo) # Unir en un string un arreglo de strings
```
La función contraria a `join` es `split`, que separa los caracteres de un string en un arreglo:
```julia
split(string, "chars") # Separar string segun aparezca "chars" 
```
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.59"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.4"
manifest_format = "2.0"
project_hash = "6e7bcec4be6e95d1f85627422d78f10c0391f199"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "b10d0b65641d57b8b4d5e234446582de5047050d"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.5"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.4.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.6.4+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.1.10"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+4"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "8489905bcdbcfac64d1daa51ca07c0d8f0283821"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.10.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "ab55ee1510ad2af0ff674dbcced5e94921f867a9"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.59"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "9306f6085165d270f7e3db02af26a400d580f5c6"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.10.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.10.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.2.1+1"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "eae1bb484cd63b36999ee58be2de6c178105112f"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.8"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"
"""

# ╔═╡ Cell order:
# ╟─5a418c70-2e3e-11ef-2f1a-59c218c011b9
# ╠═c935b47d-dc93-40be-b85c-44f9e9a3a541
# ╠═fb4cb259-2eb4-490d-94fe-ec2b4bd18cd6
# ╟─d7a8affc-2d79-47a7-ad25-bd451087d5b5
# ╠═ef9c16d5-1973-4412-9eb7-335a572225f8
# ╟─ba0b32e1-d61d-4965-a24d-2698e6a10d48
# ╠═0575cc73-065f-4778-ac94-ec7e624d27ad
# ╟─c696e2cb-25e7-48cf-8948-02012045229c
# ╟─ec03a30e-8ce6-4d45-b4a6-415e6156d9c8
# ╟─7e361a66-404a-470a-8ca3-d0fe571bb843
# ╟─5eb6d771-5717-4d08-b905-5ded2c68c75f
# ╟─4bc36635-22f5-4f5f-9b0e-73b09b83b231
# ╟─56565cfd-c48c-4dee-b276-88a64ada2c9c
# ╟─9ac37e3c-206e-49bc-b1db-37e3acb38ec0
# ╟─1e1dcbd1-2d9a-4970-82fa-ff5b8a8eaa31
# ╟─fa83edfb-791b-4403-af4c-3b70e0344638
# ╟─ca88481a-3714-41d1-bba8-6d703f14ec4e
# ╟─54e1f9c2-ac3f-409f-90ac-253920dc2b81
# ╟─751f8d92-ee41-47c0-b0c2-a64bbba3814e
# ╟─684ae170-c9b3-4bb1-aaec-4b612645bc1f
# ╟─8aaee7f3-9a1d-476c-9e66-8ca7f7967e67
# ╟─4452c6d0-53db-40a3-85fe-127eb1f52de3
# ╟─bc44740f-3078-4bfc-a66c-fd83a4e2eb0c
# ╠═0c1cd245-1d93-4a7b-a7f4-3a293bcd1385
# ╟─ec29af2e-2eec-4580-b00c-cd9109840ebe
# ╟─9ee0b92e-e1ff-4636-8014-71c6e4c7c391
# ╟─64690511-a2f5-49a8-957c-819d54ca73e8
# ╟─8fab1dc8-6f44-4c42-ac77-6bafec983319
# ╟─cf6456f6-09b6-4b42-b2c1-9dfb4ccae0b3
# ╟─513c534d-0f96-410b-97ba-edd93c7494c1
# ╠═1570ab3c-d2e8-4a55-b978-1ca56356aa37
# ╟─7a1c2d4f-afd4-4625-8d23-6d1d4fe8de13
# ╟─29319dd5-fd90-4b23-87fa-41a5a37285cc
# ╠═43c089b0-d911-4aa5-899f-ac97e59dc381
# ╠═89ffcd9e-1e3b-4951-9daa-566dd1cba354
# ╟─ea03d873-7074-499e-84d0-a089dd08576d
# ╟─6af89dfc-e05e-44d3-86f4-5e6f2802a6fc
# ╠═654e832f-242c-4458-9a66-6f4338ed122c
# ╟─c8bdbb54-5c8b-48f0-9a8e-28100fbfa1c4
# ╟─b94c4c02-a547-418b-890d-780c87df940c
# ╟─13448218-7138-4f06-92f2-b0a02d7c96fe
# ╟─70f14168-fb73-4f08-861b-2a94e93f9324
# ╟─a5393835-c314-49a7-a58d-f00b0ad25783
# ╟─5fa67cec-29ee-41fc-9388-b5240ec91dcd
# ╟─57776b6c-4038-4363-9198-8980ff61245d
# ╟─e6f71fc7-b045-40bb-be16-46e415e7b2cf
# ╟─dca8ecf3-a2a4-49b7-a6eb-5b5665e7aade
# ╠═2cb6ed3d-442e-445c-a04e-c4232239fe1f
# ╟─de154e98-21fe-4997-bdfb-f51f79b4491f
# ╟─8705ff12-6e2a-4586-b079-f31abed72a9c
# ╟─85d32093-15f0-4521-8af0-88a590da09d2
# ╟─c115273e-5e2c-406b-a56e-37b90af6c070
# ╠═92d5b860-46e7-4060-b897-eca596138daa
# ╟─ed2ce7f8-8201-4626-8874-23bd07ece520
# ╟─3e66e06d-6a04-4066-97e3-70059e2ff6e7
# ╟─1f769b4e-72c8-4b9c-89ad-a377b16accda
# ╟─45e1c304-1d83-4aaa-9e20-a4a7cb8112f1
# ╟─cea6d0dd-b3a7-493f-9f3f-e0816d26ac51
# ╠═e2efe94f-3d34-4409-aecb-fd10200fbbeb
# ╟─49262f07-008d-448e-9a0f-b2dd0f42e489
# ╠═0be3f704-8b77-4de3-be27-52f5ba578609
# ╟─ca8cfe35-d525-41ed-834e-c006191b9ee7
# ╠═bc439e8d-9e44-4a6b-ab4f-2beb4899af44
# ╟─005cdaf9-12e3-4b99-ab2f-b71d67e92d35
# ╠═4213657c-66a4-46e4-867f-ad033f2941e2
# ╟─4cb29bc0-31b7-445e-abf5-596a38f14082
# ╠═6ed6d69e-7881-4df3-ae4d-08d33cf94f72
# ╟─75ce95ea-de6a-4cb4-ab8e-02248039a9f6
# ╠═d2a039d4-8d89-40e9-8d7e-90d6983c2372
# ╟─e683357d-3423-478e-bf80-b5668566fdd3
# ╟─a3506e21-5f46-418e-a80d-addc151f6e0b
# ╠═2f00e838-6438-474d-944c-09a26ee9a4a0
# ╟─c8b64122-fad1-48ad-a1f9-78dcba312978
# ╠═41c94081-32c6-4b0a-8e89-abffac395cda
# ╟─5140b12a-7415-4432-b74d-041b909c6752
# ╟─b853acab-cdf4-4e27-bdae-8274dc0e25f2
# ╠═3900ed8e-7411-47c9-b333-39472c5cc56f
# ╟─00989ea1-c86d-4625-97ba-c4403df4193a
# ╠═4f98c2b9-ef21-41f1-99e3-0e2b06e70eeb
# ╟─f3c47133-369d-4234-9cd1-60acf911dc57
# ╠═fef7248f-4499-467e-959f-d2f4ab49b6b8
# ╟─ba4199fb-fcac-4536-aba0-f8bafc4a4095
# ╠═57c4870f-aa45-47dc-a069-a876ec6123ea
# ╟─1ff3d13e-3ab0-44ab-b360-76619a367fcd
# ╠═b31de5d1-f96b-4f47-ab3c-b6e22cd993e6
# ╟─6431099d-cb6f-4064-b172-18a5f2681ae4
# ╠═c63815ac-87a6-4d8c-9b23-75f5e299e3dd
# ╟─cd24c1d0-15e4-4059-81f8-8354a6888806
# ╠═9fc27f0b-8eb3-4345-95f8-6254708bf760
# ╟─c61bfe94-8a49-4adc-b6bc-ac3dccb27865
# ╠═afd7608a-3c18-4fc5-bd18-305d9f6e5f04
# ╟─f93faa52-b429-465e-bcb3-9b082aea122c
# ╠═b8f214aa-ad94-45c9-8652-bf959e459cdb
# ╟─fb67f5aa-4267-4485-9383-8f64c28206b4
# ╠═ec21dde4-cfa4-4e71-a472-201ed4af3fe0
# ╟─6d8192f8-8143-419e-9b5b-b985dc9b29dc
# ╠═7b5f9790-a8d6-4785-806f-c6b26306a307
# ╟─3efc1ae0-f83c-45e8-a9ee-e9eaae0cd393
# ╠═8bb4d9bd-52e7-42a2-ac2e-a51328ddfd18
# ╟─7cd7da11-7bfa-4877-add8-43499af54038
# ╠═1fb31834-5d9b-4fd0-ae5d-3b18e59ecac9
# ╟─c8d77f30-f8ac-4ac7-831f-02948250ba81
# ╠═ed2ec0f5-2cb1-4aba-b65e-79b56c9cb3fd
# ╟─46b9e609-6379-43e2-a5c9-81b84b804a87
# ╠═239013e2-5fbc-4b99-a431-cf5829b9651d
# ╟─3d064c28-c87b-4cf1-b7d2-0911152a1044
# ╠═59926932-b32c-45d3-a07c-85c20df77b16
# ╟─09c6e0c2-011e-4362-87d5-38708cca9df9
# ╟─a686e7df-0426-4b5a-af55-f97a1a15abbb
# ╠═ef48041c-2906-4cc5-94fd-eead44483b5f
# ╟─4e124992-bb39-4193-a921-23b3605ba0de
# ╠═c0754860-4aab-4459-8e28-7f3348c322fe
# ╟─934c0e13-65ee-437c-9e4b-14b91fa6686b
# ╠═02122c48-4238-4b93-99fe-501ea48e7bc9
# ╟─131e8c75-3432-47dd-98c7-b57301d5e6b2
# ╟─10599100-fe4e-44dd-beb9-5e3a4d13ad4b
# ╠═22f3bd96-9f06-41ae-a95c-2aa2962ce0b1
# ╟─411e281e-a42a-4e04-bef8-a5852380d75c
# ╟─075fdefb-46ff-4b6b-96fd-f81c7a142e7e
# ╠═7020ea83-aee0-4a66-bb41-35bfa14601fd
# ╟─60b29ce7-9c25-449a-b0f4-1f8f89dd9610
# ╟─e4b78df2-3f19-4e9c-a5ee-7dcc17e4e351
# ╟─85223ae6-b46d-4893-b613-0ee61a1f8f44
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
