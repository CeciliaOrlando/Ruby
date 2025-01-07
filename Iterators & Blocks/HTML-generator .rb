def tag(tag_name, attributes = nil) # es una función que recibe un nombre de etiqueta y un atributo en forma de array de dos elementos [nombre, valor]  y un bloque de código que se ejecutará dentro de la etiqueta HTML que se genere con el nombre y atributos dados.
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  attr_name = attributes.nil? ? nil : attributes.first # si attributes es nil, attr_name es nil, si no, es el primer elemento del array attributes que es el nombre del atributo que se le quiere dar a la etiqueta HTML que se va a generar.
  attr_value = attributes.nil? ? nil : attributes.last # si attributes es nil, attr_value es nil, si no, es el segundo elemento del array attributes que es el valor del atributo que se le quiere dar a la etiqueta HTML que se va a generar.

  open_tag = attributes.nil? ? tag_name : "#{tag_name} #{attr_name}=\"#{attr_value}\"" # si attributes es nil, open_tag es igual al nombre de la etiqueta HTML que se va a generar, si no, es igual al nombre de la etiqueta HTML que se va a generar seguido de un espacio y el nombre del atributo y su valor.
  content = yield # se ejecuta el bloque de código que se le pasa a la función tag y se guarda el resultado en la variable content.
  "<#{open_tag}>#{content}</#{tag_name}>" # se retorna un string que contiene la etiqueta HTML que se va a generar con el nombre y atributos dados y el contenido que se le pasa a la función tag. El contenido se encierra entre las etiquetas de apertura y cierre de la etiqueta HTML. 
end
