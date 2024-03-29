#!/usr/bin/env Rscript

# Load required libraries
library(ggplot2)

setwd("~/Documents/planning-formalisms")

df <- read.csv("data.csv")

ground_actions <- ggplot(df, aes(x = domain, y = grounded.actions, fill = domain)) +
  geom_boxplot() +
  labs(x = 'Domain', y = "Number of Grounded Actions [log10]", title = "Number of Grounded Actions for each Domain", fill = "Domain") + 
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank()) +
  facet_wrap(~ type) +
  scale_y_log10()

ground_actions

heuristic_informativeness <- ggplot(df, aes(y = initial.heuristic.val, x = metric.search, color = domain)) + 
  geom_point(position = "dodge") +
  labs(y = "Initial Heuristic Value [log10]", x = "Actual Cost [log10]", title = "Comparison: Heuristic Informativeness (Search Method)", color = "Domain") +
  facet_wrap(~ search.method, scales="free") +
  scale_x_log10() + # Add this line for log10 scaling
  scale_y_log10() + # Add this line for log10 scaling
  geom_abline(intercept = 0, slope = 1, size = 0.5)

heuristic_informativeness

search_time <- ggplot(df, aes(x = domain), log10="y") +
  geom_col(aes(y = mean(states.evaluated), fill = domain)) +
  labs(x = "Domain", y = "States Evaluated [log10]", title = "Average Number of States Evaulated per Domain", fill = "Domain") +
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank()) 

search_time

duplicates <- ggplot(df, aes(x = domain, y = duplicates.detected, fill = domain), log10="y") +
  geom_col() +
  labs(x = "Domain", y = "Duplicates Detected [log10]", title = "Number of Duplicates Detected per Domain", fill = "Domain") +
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank()) 

duplicates

plan_length <- ggplot(df, aes(x = domain, y = plan.length, fill = domain)) +
  geom_col() +
  labs(x = "Domain", y = "Plan Length [log10]", title = "Length of Plans per Domain", fill = "Domain") +
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank())

plan_length

grounding_time <- ggplot(df, aes(x = domain, y = mean(grounding.time), fill = domain)) +
  geom_col() +
  labs(x = "Domain", y = "Grounding Time (msec)", title = "Average Grounding Time per Domain", fill = "Domain") +
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank())

grounding_time

states_eval_vs_search_time <- ggplot(df, aes(x = states.evaluated, y = search.time.msec, color = domain, shape=search.method), log10="y") +
  geom_point() +
  labs(x = "States Evaluated", y = "Search Time (msec)", title = "States Evaluated vs Search Time", color = "Domain", shape = "Search Method") +
  scale_x_log10() + # Add this line for log10 scaling
  scale_y_log10() + # Add this line for log10 scaling
  geom_abline(intercept = 0, slope = 1, size = 0.5) +
  facet_wrap(~ type, scales="free")

states_eval_vs_search_time


# List of plots
plots <- list(
  ground_actions, heuristic_informativeness, search_time, states_eval_vs_search_time, duplicates, plan_length, grounding_time
)

# Save each plot as a PDF
for (i in seq_along(plots)) {
  ggsave(paste0("plot-", i, ".pdf"), plots[[i]])
}
