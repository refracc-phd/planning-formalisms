# Load required libraries
library(ggplot2)

setwd("/Users/refracc/Documents/PhD/planning-formalisms")

df <- read.csv("output.csv")

ground_actions <- ggplot(df, aes(x = domain, y = grounded.actions, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Actions (log10)", title = "Number of Grounded Actions for each Domain") +
  theme(text = element_text(size=14)) +
  scale_y_log10()  # Add this line for log10 scaling

ground_fluents <- ggplot(df, aes(x = domain, y = grounded.fluents, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Fluents (log10)", title = "Number of Grounded Fluents for each Domain") +
  theme(text = element_text(size=14)) +
  scale_y_log10()  # Add this line for log10 scaling


ground_external_actions <- ggplot(df, aes(x = domain, y = grounded.external.actions, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded External Actions", title = "Number of Grounded External Actions for each Domain") +
  theme(text = element_text(size=14))

ground_predicates <- ggplot(df, aes(x = domain, y = grounded.predicates, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Predicates", title = "Number of Grounded Predicates for each Domain") +
  theme(text = element_text(size=14))

ground_events <- ggplot(df, aes(x = domain, y = grounded.predicates, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Events", title = "Number of Grounded Events for each Domain") +
  theme(text = element_text(size=14))

ground_actions

ground_fluents

ground_external_actions

ground_predicates

ground_events

# List of plots
plots <- list(
  ground_actions, ground_fluents, ground_external_actions, ground_predicates, ground_events
)

# Save each plot as a PDF
for (i in seq_along(plots)) {
  ggsave(paste0("plot-", i, ".pdf"), plots[[i]])
}
