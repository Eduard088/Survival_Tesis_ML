library(dplyr)
library(ggplot2)
library(readxl)
library(plotly)
library(reshape2)
library(reactable)
library(randomForestSRC)
library(survival)

# Función del Random Survival Forest:

crear_modelo_rsf <- function(formula_surv, data, ntree = 1250, nodesize = 9.35) {
  modelo_rsf <- rfsrc(formula_surv, 
                      data = data, 
                      ntree = ntree,  # Número de árboles
                      nodesize = nodesize,  # Tamaño mínimo de nodos
                      importance = TRUE)
  return(modelo_rsf)
}

# Función Para Crear el Tibble de Supervivencia
crear_survival_df <- function(modelo) {
  survival_df <- data.frame(time = modelo$time.interest,
                            t(modelo$survival.oob))
  return(survival_df)
}

# Función para convertir el tibble de supervivencia a formato largo
crear_survival_long <- function(survival_df) {
  survival_long <- melt(survival_df, id = "time", variable.name = "observacion", value.name = "survival")
  return(survival_long)
}

crear_importancia_df <- function(modelo) {
  importancia_df <- data.frame(Variable = names(modelo$importance),
                               Importancia = modelo$importance)
  return(importancia_df)
}

# Función Para Crear el Gráfico de Supervivencia:
crear_grafico_supervivencia <- function(survival_long) {
  grafico <- ggplotly(ggplot(survival_long, aes(x = time, y = survival, group = observacion, color = observacion)) +
    geom_line() +
    labs(title = "Curvas de Supervivencia del PRI en la Presidencia de la República",
         subtitle = "La Muerte de la Partitocracia Priista",
         x = "Tiempo", y = "Probabilidad de Supervivencia",
         caption = "Elaboración Propia") +
    theme_minimal() +
    theme(
      plot.title = element_text(face = "bold", hjust = 0.5, color = "#34495E", size = 12),
      plot.subtitle = element_text(hjust = 0.5, color = "#7F8C8D"),
      plot.caption = element_text(size = 10, hjust = 1, color = "#95A5A6"),
      axis.title.x = element_text(face = "bold", color = "#2C3E50", size = 12),
      axis.title.y = element_text(face = "bold", color = "#2C3E50", size = 12),
      axis.text = element_text(color = "#34495E"),
      panel.grid.major = element_line(color = "#D0D3D4", linewidth = 0.5),
      panel.grid.minor = element_blank(),
      legend.position = "none"
    ))
  return(grafico)
}

crear_grafico_importancia <- function(importancia_df) {
  grafico_importancia <- ggplotly(ggplot(importancia_df, aes(x = reorder(Variable, Importancia), y = Importancia)) +
    geom_bar(stat = "identity", fill = "steelblue") +
    coord_flip() +
    labs(
      title = "Importancia de las Variables en el Tiempo en el Poder del PRI",
      x = "Variables",
      y = "Importancia"
    ) +
    theme_minimal() +
    theme(
      plot.title = element_text(face = "bold", hjust = 0.5, color = "#34495E", size = 12),
      plot.subtitle = element_text(hjust = 0.5, color = "#7F8C8D"),
      plot.caption = element_text(size = 10, hjust = 1, color = "#95A5A6"),
      axis.title.x = element_text(face = "bold", color = "#2C3E50", size = 12),
      axis.title.y = element_text(face = "bold", color = "#2C3E50", size = 12),
      axis.text = element_text(color = "#34495E"),
      panel.grid.major = element_line(color = "#D0D3D4", linewidth = 0.5),
      panel.grid.minor = element_blank()
    ))
  return(grafico_importancia)
}