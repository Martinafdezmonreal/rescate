# 🧠 Reto de Algoritmos: Rescate de Datos Críticos en una Infraestructura Comprometida

from typing import List

class Tarea:
    def __init__(self, nombre, duracion, dependencias=None):
        self.nombre = nombre
        self.duracion = duracion
        self.dependencias = dependencias or []
        self.completada = False

    def puede_iniciar(self, tareas):
        return all(tareas[dep].completada for dep in self.dependencias)

    def ejecutar(self):
        self.completada = True
        print(f"Tarea '{self.nombre}' completada en {self.duracion} min.")

class Tecnico:
    def __init__(self, id):
        self.id = id
        self.ocupado = False

class RescateDatos:
    def __init__(self):
        self.tareas = {
            "A": Tarea("Identificar servidores afectados", 15),
            "B": Tarea("Priorizar datos críticos", 20, ["A"]),
            "C": Tarea("Activar protocolo de recuperación", 10, ["A"]),
            "D": Tarea("Asignar técnicos a servidores", 5, ["B", "C"]),
            "E": Tarea("Recuperar datos de servidor 1", 30, ["D"]),
            "F": Tarea("Recuperar datos de servidor 2", 25, ["E"]),
            "G": Tarea("Validar integridad de datos recuperados", 15, ["F"]),
            "H": Tarea("Generar informe preliminar para dirección", 10, ["G"]),
            "I": Tarea("Comunicar a clientes afectados", 20, ["G"]),
            "J": Tarea("Coordinar con equipo legal", 15, ["G"]),
            "K": Tarea("Preparar plan de contingencia", 25, ["G"]),
        }
        self.tecnicos = [Tecnico(i) for i in range(1, 4)]
        self.tiempo_total = 0

    def ejecutar_cronograma(self):
        orden = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
        for clave in orden:
            tarea = self.tareas[clave]
            if tarea.puede_iniciar(self.tareas):
                if clave in ["E", "F"]:
                    tecnico = self.tecnicos[0]
                    print(f"Técnico {tecnico.id} asignado a '{tarea.nombre}'.")
                tarea.ejecutar()
                self.tiempo_total += tarea.duracion
        print(f"Tiempo total estimado: {self.tiempo_total} min.")

def main():
    rescate = RescateDatos()
    rescate.ejecutar_cronograma()

if __name__ == "__main__":
    main()

Presentación:

Bienvenidos, estimados alumnos. Este ejercicio simula una situación de emergencia tecnológica en la que deberán aplicar sus habilidades analíticas para diseñar una solución eficiente, lógica y bien comunicada.

Enunciado:

Imagina que eres el responsable de sistemas en una empresa que gestiona datos médicos sensibles. A las 8:00 de la mañana, se detecta un ataque de ransomware que ha comprometido parcialmente la infraestructura. El equipo de seguridad ha logrado aislar el ataque, pero solo tienes 120 minutos para rescatar los datos más críticos antes de que el sistema se reinicie automáticamente y se pierdan.

Dispones de un conjunto de tareas que deben ejecutarse en orden lógico, algunas en paralelo, y otras dependen de recursos limitados (como personal técnico o acceso físico a servidores).

Objetivos del Reto:

Definir el Objetivo del Proyecto: ¿Qué se debe lograr exactamente en estos 120 minutos? Diagrama de Flujo del Cronograma: Representa las tareas y sus dependencias. Nivelación de Recursos: Optimiza el uso de personal técnico y herramientas disponibles. Plan de Comunicación de Crisis: ¿Cómo se informa a los stakeholders internos y externos? Tareas, Descripciones y Duraciones:

A: Identificar servidores afectados (15 min) B: Priorizar datos críticos (20 min) C: Activar protocolo de recuperación (10 min) D: Asignar técnicos a servidores (5 min) E: Recuperar datos de servidor 1 (30 min) F: Recuperar datos de servidor 2 (25 min) G: Validar integridad de datos recuperados (15 min) H: Generar informe preliminar para dirección (10 min) I: Comunicar a clientes afectados (20 min) J: Coordinar con equipo legal (15 min) K: Preparar plan de contingencia (25 min) Restricciones:

Solo hay 3 técnicos disponibles. Solo se pueden recuperar datos de un servidor a la vez. Las tareas H, I, J y K deben comenzar después de validar los datos (tarea G).

Instrucciones para la Entrega:

Fecha límite: lunes 15 de septiembre de 2025, 23:55 hrs. Entrega en formato PDF. Nombre del archivo: C1_Nombre_Apellido.pdf

Rúbrica de Evaluación:

Categoría

Descripción

Ponderación

Definición de Objetivos

Claridad y enfoque en el propósito del proyecto

20%

Diagrama de Flujo del Cronograma

Precisión en dependencias y lógica del flujo

25%

Nivelación de Recursos

Optimización del uso de técnicos y tiempos

20%

Comunicación del Proyecto

Claridad y eficacia con stakeholders

20%

Presentación y Formato

Organización y cumplimiento de instrucciones

15%