class Trabajo {
  String descripcion;
  String titulo;
  String fecha;
  String tipo;
  Trabajo(this.titulo, this.descripcion, this.tipo, this.fecha);
}

class Info {
  List<Trabajo> trabajos() {
    return [
      new Trabajo(
          "Animación de personajes virtuales en ambientes virtuales inmersos interactivos",
          "Tesis sobre una simulación de evacuación en caso de un incendio, contando como ambiente/escenario la biblioteca central de la buap." +
              "\n\nCaracterísticas de la aplicación." +
              "\n\n*Generación de personajes tomando en cuenta características previamente vistas." +
              "\n*Dar comportamientos a los personajes de acuerdo a la situación.",
          "Tesis.",
          "Ene. de 2019 – Oct. de 2019"),
      new Trabajo(
          "Animación de personajes virtuales en ambientes virtuales inmersos interactivos",
          "Tesis sobre una simulación de evacuación en caso de un incendio, contando como ambiente/escenario la biblioteca central de la buap." +
              "\n\nCaracterísticas de la aplicación." +
              "\n\n*Generación de personajes tomando en cuenta características previamente vistas." +
              "\n*Dar comportamientos a los personajes de acuerdo a la situación.",
          "Tesis.",
          "Ene. de 2019 – Oct. de 2019"),
      new Trabajo(
          "Animación de personajes virtuales en ambientes virtuales inmersos interactivos",
          "Tesis sobre una simulación de evacuación en caso de un incendio, contando como ambiente/escenario la biblioteca central de la buap." +
              "\n\nCaracterísticas de la aplicación." +
              "\n\n*Generación de personajes tomando en cuenta características previamente vistas." +
              "\n*Dar comportamientos a los personajes de acuerdo a la situación.",
          "Tesis.",
          "Ene. de 2019 – Oct. de 2019"),
      new Trabajo(
          "Animación de personajes virtuales en ambientes virtuales inmersos interactivos",
          "Tesis sobre una simulación de evacuación en caso de un incendio, contando como ambiente/escenario la biblioteca central de la buap." +
              "\n\nCaracterísticas de la aplicación." +
              "\n\n*Generación de personajes tomando en cuenta características previamente vistas." +
              "\n*Dar comportamientos a los personajes de acuerdo a la situación.",
          "Tesis.",
          "Ene. de 2019 – Oct. de 2019"),
    ];
  }
}
