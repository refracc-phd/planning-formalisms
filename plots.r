# Load required libraries
library(ggplot2)
library(dplyr)

setwd("~/Documents/planning-formalisms")

df <- read.csv("output.csv")

ground_actions <- ggplot(df, aes(x = domain, y = grounded.actions, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Actions (log10)", title = "Number of Grounded Actions for each Domain") +
  theme(text = element_text(size=14)) +
  scale_y_log10()  # Add this line for log10 scaling

ground_actions

ground_fluents <- ggplot(df, aes(x = domain, y = grounded.fluents, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Fluents (log10)", title = "Number of Grounded Fluents for each Domain") +
  theme(text = element_text(size=14)) +
  scale_y_log10()  # Add this line for log10 scaling

ground_fluents

ground_external_actions <- ggplot(df, aes(x = domain, y = grounded.external.actions, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded External Actions", title = "Number of Grounded External Actions for each Domain") +
  theme(text = element_text(size=14))

ground_external_actions

ground_predicates <- ggplot(df, aes(x = domain, y = grounded.predicates, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Predicates", title = "Number of Grounded Predicates for each Domain") +
  theme(text = element_text(size=14))

ground_predicates

ground_events <- ggplot(df, aes(x = domain, y = grounded.predicates, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Events", title = "Number of Grounded Events for each Domain") +
  theme(text = element_text(size=14))

ground_events

xs <- range(df$initial.heuristic.val, na.rm = TRUE)
ys <- range(df$metric.search, na.rm = TRUE)
maxs <- max(xs, ys)

heuristic_informativeness_a <- ggplot(df, aes(x = initial.heuristic.val, y = metric.search, color = search.method)) + 
  geom_point() +
  labs(x = "Initial Heuristic Value", y = "Actual Heuristic Value", title = "Comparison: Heuristic Informativeness", color = "Search Method") +
  scale_y_log10() + # Add this line for log10 scaling
  scale_x_log10()  # Add this line for log10 scaling
  
heuristic_informativeness_a + scale_colour_viridis_d(option = "turbo")

# List of plots
plots <- list(
  ground_actions, ground_fluents, ground_external_actions, ground_predicates, ground_events, heuristic_informativeness_a 
)

# Save each plot as a PDF
for (i in seq_along(plots)) {
  ggsave(paste0("plot-", i, ".pdf"), plots[[i]])
}
