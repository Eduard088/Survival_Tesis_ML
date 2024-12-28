# Proyecto de Machine Learning: Random Survival Forest

## Descripción

Este proyecto implementa un modelo de Random Survival Forest utilizando R. El objetivo es predecir la supervivencia de individuos basándose en diversas características. El proyecto está estructurado de manera modular para facilitar su comprensión y mantenimiento.

## Estructura del Proyecto

```
{{cookiecutter.project_slug}}/
├── data/               # Datos de entrada y conjuntos de datos
├── notebooks/          # Notebooks de Quarto
└── README.md           # Documentación del proyecto
```

## Requisitos

- R (versión 4.0 o superior)
- Paquetes de R: `randomForestSRC`, `survival`, `dplyr`, `ggplot2`

## Instalación

1. Clona este repositorio:
    ```sh
    git clone https://github.com/tu_usuario/tu_repositorio.git
    ```
2. Instala los paquetes necesarios en R:
    ```R
    install.packages(c("randomForestSRC", "survival", "dplyr", "ggplot2"))
    ```

## Uso

1. Preprocesa los datos:
    ```R
    source("scripts/preprocess_data.R")
    ```

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue o envía un pull request para discutir cualquier cambio.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

## Contacto

Para cualquier consulta, puedes escribirme: eduardobareapootq@outlook.com