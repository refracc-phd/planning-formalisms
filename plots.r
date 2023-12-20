# Load required libraries
library(ggplot2)
library(tidyr)

setwd("/Users/refracc/Documents/PhD/planning-formalisms/course-problem/problems")

df <- read.csv("output.csv")

gg_search_time <- ggplot(df, aes(x = type, y = search.time.msec, fill = search.method)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  labs(x = 'Problem Type', y = 'Search Time (msec)', title = 'Search Time Comparison')

gg_search_time

gg_expanded_nodes <- ggplot(df, aes(x = type, y = expanded.nodes, fill = search.method)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  labs(x = 'Problem Type', y = 'Expanded Nodes', title = 'Expanded Nodes Comparison')

gg_expanded_nodes

gg_search_vs_nodes <- ggplot(df, aes(x = search.time.msec, y = expanded.nodes, color = search.method)) +
  geom_line() +
  facet_wrap(~type, scale='free_x') +
  labs(x = 'Search Time (msec)', y = 'Expanded Nodes', title = 'Search Time vs Expanded Nodes')

gg_search_vs_nodes

gg_avg_search_time <- ggplot(df, aes(x = type, y = search.time.msec, fill = search.method)) +
  geom_bar(stat = 'summary', fun = "mean", position = 'dodge') +
  labs(x = 'Problem Type', y = 'Average Search Time (msec)', title = 'Average Search Time by Type and Search Method')

gg_avg_search_time

# Plan Length by Type and Problem
gg_plan_length <- ggplot(df, aes(x = type, y = plan.length, color = problem)) +
  geom_point(position = position_jitterdodge(), show.legend = TRUE) +
  labs(x = 'Problem Type', y = 'Plan Length', title = 'Plan Length Distribution by Type and Problem')

gg_plan_length

# Search Time (msec) by Type and Search Method
gg_search_time_type <- ggplot(df, aes(x = type, y = search.time.msec, fill = search.method)) +
  geom_boxplot() +
  facet_wrap(~type, scale="free_x") +
  labs(x = 'Problem Type', y = 'Search Time (msec)', title = 'Search Time Distribution by Type and Search Method')

gg_search_time_type

# Expanded Nodes by Problem and Type
gg_expanded_nodes_type <- ggplot(df, aes(x = problem, y = expanded.nodes, color = type)) +
  geom_point(position = position_jitterdodge(), show.legend = TRUE) +
  labs(x = 'Problem', y = 'Expanded Nodes', title = 'Expanded Nodes Distribution by Problem and Type')

gg_expanded_nodes_type

# States Evaluated by Type and Problem
gg_states_evaluated <- ggplot(df, aes(x = type, y = states.evaluated, color = problem)) +
  geom_point(position = position_jitterdodge(), show.legend = TRUE) +
  scale_y_continuous(trans='log10') +
  labs(x = 'Problem Type', y = 'States Evaluated', title = 'States Evaluated Distribution by Type and Problem')

gg_states_evaluated

# Heuristic Time (msec) by Search Method and Type
gg_heuristic_time <- ggplot(df, aes(x = search.method, y = heuristic.time.msec, fill = type)) +
  geom_boxplot() +
  labs(x = 'Search Method', y = 'Heuristic Time (msec)', title = 'Heuristic Time Distribution by Search Method and Type')

gg_heuristic_time

# Duplicates Detected by Search Method and Problem
gg_duplicates_detected <- ggplot(df, aes(x = search.method, y = duplicates.detected, color = problem)) +
  geom_boxplot() +
  labs(x = 'Search Method', y = 'Duplicates Detected', title = 'Duplicates Detected Distribution by Search Method and Problem')

gg_duplicates_detected

# Planning Time (msec) by Type and Search Method
gg_planning_time <- ggplot(df, aes(x = type, y = planning.time.msec, fill = search.method)) +
  geom_boxplot() +
  labs(x = 'Problem Type', y = 'Planning Time (msec)', title = 'Planning Time Distribution by Type and Search Method')

gg_planning_time

# Search Time (msec) vs. Expanded Nodes, split by Type
gg_search_vs_nodes_type <- ggplot(df, aes(x = search.time.msec, y = expanded.nodes, color = type)) +
  geom_point() +
  labs(x = 'Search Time (msec)', y = 'Expanded Nodes', title = 'Search Time vs. Expanded Nodes, split by Type')

gg_search_vs_nodes_type

# Average Plan Length by Type and Search Method
gg_avg_plan_length <- ggplot(df, aes(x = type, y = plan.length, fill = search.method)) +
  geom_boxplot() +
  labs(x = 'Problem Type', y = 'Average Plan Length', title = 'Average Plan Length by Type and Search Method')

gg_avg_plan_length

# Planning Time (msec) by Type and Problem, split by Search Method
gg_planning_time_search_method <- ggplot(df, aes(x = type, y = planning.time.msec, fill = search.method)) +
  geom_boxplot() +
  labs(x = 'Problem Type', y = 'Planning Time (msec)', title = 'Planning Time Distribution by Type and Problem, split by Search Method')

gg_planning_time_search_method

# Heuristic Time (msec) by Problem, split by Search Method
gg_heuristic_time_search_method <- ggplot(df, aes(x = search.method, y = heuristic.time.msec, fill = problem)) +
  geom_boxplot() +
  labs(x = 'Problem', y = 'Heuristic Time (msec)', title = 'Heuristic Time Distribution by Problem, split by Search Method')

gg_heuristic_time_search_method

# Expanded Nodes by Problem, split by Search Method
gg_expanded_nodes_search_method <- ggplot(df, aes(x = problem, y = expanded.nodes, fill = search.method)) +
  geom_boxplot() +
  labs(x = 'Problem', y = 'Expanded Nodes', title = 'Expanded Nodes Distribution by Problem, split by Search Method')

gg_expanded_nodes_search_method

# Duplicates Detected by Problem, split by Search Method
gg_duplicates_detected_search_method <- ggplot(df, aes(x = problem, y = duplicates.detected, color = search.method)) +
  geom_boxplot() +
  labs(x = 'Problem', y = 'Duplicates Detected', title = 'Duplicates Detected Distribution by Problem, split by Search Method')

gg_duplicates_detected_search_method

# Plan Length vs. Search Time (msec) by Type, split by Search Method
gg_plan_length_vs_search_time <- ggplot(df, aes(x = plan.length, y = search.time.msec, color = search.method)) +
  geom_point() +
  facet_wrap(~type, scales = 'free_y') +
  scale_y_continuous(trans='log10') +
  labs(x = 'Plan Length', y = 'Search Time (msec)', title = 'Plan Length vs. Search Time, split by Type and Search Method')

gg_plan_length_vs_search_time

# Bar plot for Duplicates Detected by Type and Problem
gg_duplicates_by_type_problem <- ggplot(df, aes(x = type, y = duplicates.detected, fill = problem)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  labs(x = 'Type', y = 'Duplicates Detected', title = 'Duplicates Detected by Type and Problem')

gg_duplicates_by_type_problem

# Line plot for States Evaluated over Search Time, color by Search Method
gg_states_vs_search_time <- ggplot(df, aes(x = search.time.msec, y = states.evaluated, color = search.method)) +
  geom_line() +
  facet_wrap(~type, scales = 'free_x') +
  labs(x = 'Search Time (msec)', y = 'States Evaluated', title = 'States Evaluated over Search Time')

gg_states_vs_search_time

# List of plots
plots <- list(
  gg_search_time, gg_expanded_nodes,
  gg_search_vs_nodes, gg_avg_search_time, gg_plan_length, gg_search_time_type, gg_expanded_nodes_type,
  gg_states_evaluated, gg_heuristic_time, gg_duplicates_detected, gg_planning_time,
  gg_search_vs_nodes_type, gg_avg_plan_length, gg_planning_time_search_method, gg_heuristic_time_search_method, gg_expanded_nodes_search_method,
  gg_duplicates_detected_search_method, gg_plan_length_vs_search_time, gg_duplicates_by_type_problem, gg_states_vs_search_time
)

# Save each plot as a PDF
for (i in seq_along(plots)) {
  ggsave(paste0("plot-", i, ".pdf"), plots[[i]])
}
