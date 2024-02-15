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

df <- df %>%
  select(problem, domain, initial.heuristic.val, metric.search)

xs <- range(df$initial.heuristic.val, na.rm = TRUE)
ys <- range(df$metric.search, na.rm = TRUE)
maxs <- max(xs, ys)

heuristic_informativeness <- ggplot(df, aes(y = initial.heuristic.val, x = metric.search, color = problem, shape = domain)) + 
  geom_point() +
  labs(y = "Initial Heuristic Value", x = "Metric Search Value", title = "Comparison of the Initial Heuristic Search Value versus the Actual Heuristic Value")
  
heuristic_informativeness


heuristic_informativeness <- ggplot(df, aes(y = initial.heuristic.val, x = metric.search, color = problem, shape = domain)) + 
  geom_point() +
  labs(y = "Initial Heuristic Value", x = "Metric Search Value", title = "Comparison of the Initial Heuristic Search Value versus the Actual Heuristic Value") +
  xlim(0, 500) +
  ylim(0, 500)

heuristic_informativeness

heuristic_informativeness <- ggplot(df, aes(y = initial.heuristic.val, x = metric.search, color = problem, shape = domain)) + 
  geom_point() +
  labs(y = "Initial Heuristic Value", x = "Metric Search Value", title = "Comparison of the Initial Heuristic Search Value versus the Actual Heuristic Value") +
  xlim(0, 50) +
  ylim(0, 50)

heuristic_informativeness

# List of plots
plots <- list(
  ground_actions, ground_fluents, ground_external_actions, ground_predicates, ground_events, heuristic_informativeness
)

# Save each plot as a PDF
for (i in seq_along(plots)) {
  ggsave(paste0("plot-", i, ".pdf"), plots[[i]])
}
