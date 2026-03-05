#let _diagram(kind, name, widthImage: 35%) = {
  let path = "../assets/st_diagrams/svg/" + name + ".svg"
  let autoLabel = kind + "-" + name

  figure(
    image(path, width: widthImage),
    caption: [#kind Diagram — #name],
  )
}

#let classDiagram(name, width: 10%) = {
  _diagram("Class", name)
}

#let activityDiagram(name, width: 50%) = {
  _diagram("Activity", name)
}

#let sequenceDiagram(name, width: 50%) = {
  _diagram("Sequence", name)
}