#let _diagram(kind, name, widthImage) = {
  let path = "../assets/st_diagrams/svg/" + name + ".svg"
  let autoLabel = kind + "-" + name

  figure(
    image(path, width: widthImage),
    caption: [#kind Diagram — #name],
  )
}

#let codeDiagram(name, width) = {
  _diagram("Code", name, width)
}

#let componentDiagram(name, width) = {
  _diagram("Component", name, width)
}

#let containerDiagram(name, width) = {
  _diagram("Container", name, width)
}

#let contextDiagram(name, width) = {
  _diagram("Context", name, width)
}