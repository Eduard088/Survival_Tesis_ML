# Random Survival Forest (RSF): Proyecto de Machine Learning

## Documentación de la Carpeta `model`

La carpeta `model` contiene todos los modelos entrenados y los scripts relacionados con el entrenamiento y evaluación de los modelos de Random Survival Forest. A continuación se detalla la estructura y contenido de esta carpeta:

### Estructura de la Carpeta `model`

```
model/
├── script.R            # Script para entrenar el modelo de forma modular
```

### Ejemplo de Uso

Para entrenar el modelo, ejecuta el siguiente comando en R:

```R
source("model/script.R")
```

### Notas Adicionales

- Asegúrate de que todos los paquetes necesarios estén instalados antes de ejecutar los scripts.

Para más detalles, consulta los comentarios dentro de cada script. Proyecto de Machine Learning: Random Survival Forest

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
- Paquetes de R: `dplyr` `ggplot2` `readxl` `plotly` `reshape2` `randomForestSRC`, 
`reactable`, `survival` , `ggplot2`

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


## Replicar el Proyecto desde la Terminal:

### Descargar la Plantilla usando Cookiecutter:

Para usar esta plantilla, necesitas tener instalado Cookiecutter. Si no lo tienes, puedes instalarlo usando pip:

```sh 
pip install cookiecutter
```

o conda:

```sh
conda install -c conda-forge cookiecutter
```

Una vez que tengas Cookiecutter instalado, puedes usarlo para descargar la plantilla de la siguiente manera:

```sh
cookiecutter https://github.com/Eduard088/Survival_Tesis_ML
```

### Clonar el Repositorio:

Si prefieres no usar Cookiecutter, puedes clonar este repositorio directamente:

```sh
git clone https://github.com/Eduard088/Survival_Tesis_ML.git
```

## Visualización web del proyecto:

[Presentación del Modelo](https://eduard088.github.io/Survival_Tesis_ML/)

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue o envía un pull request para discutir cualquier cambio.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

## Contacto

Para cualquier consulta, puedes escribirme: eduardobareapoot@outlook.com
