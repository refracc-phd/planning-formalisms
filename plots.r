# Load required libraries
library(ggplot2)

setwd("~/Documents/PhD/planning-formalisms")

df <- read.csv("output.csv")

ground_actions <- ggplot(df, aes(x = domain, y = grounded.actions, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Actions [log10]", title = "Number of Grounded Actions for each Domain") +
  scale_x_discrete(labels = c("block-group", "bw", "continuous", "discrete", "farmland", "fn-cntrs", "fn-cntrs-inv", "fn-cntrs-rnd", "ma-bw", "ma-sban", "plnt-wtring", "sailing", "sban")) +
  scale_y_log10()

ground_actions

ground_fluents <- ggplot(df, aes(x = domain, y = grounded.fluents, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded Fluents [log10]", title = "Number of Grounded Fluents for each Domain")+
  theme(element_text(size = 18)) +
  scale_x_discrete(labels = c("block-group", "bw", "continuous", "discrete", "farmland", "fn-cntrs", "fn-cntrs-inv", "fn-cntrs-rnd", "ma-bw", "ma-sban", "plnt-wtring", "sailing", "sban")) +
  scale_y_log10()

ground_fluents

ground_external_actions <- ggplot(df, aes(x = domain, y = grounded.external.actions, fill = domain)) +
  geom_boxplot(show.legend = FALSE) +
  labs(x = 'Domain', y = "Number of Grounded External Actions [log10]", title = "Number of Grounded External Actions for each Domain") +
  scale_x_discrete(labels = c("block-group", "bw", "continuous", "discrete", "farmland", "fn-cntrs", "fn-cntrs-inv", "fn-cntrs-rnd", "ma-bw", "ma-sban", "plnt-wtring", "sailing", "sban")) +
  scale_y_log10() +
  theme(element_text(size = 18))

ground_external_actions

heuristic_informativeness <- ggplot(df, aes(y = initial.heuristic.val, x = metric.search, color = domain)) + 
  geom_point(position = "dodge") +
  labs(y = "Initial Heuristic Value [log10]", x = "Actual Cost [log10]", title = "Comparison: Heuristic Informativeness (Search Method)", color = "Domain") +
  scale_x_log10() + # Add this line for log10 scaling
  scale_y_log10() + # Add this line for log10 scaling
  theme(element_text(size = 18))+
  facet_wrap(~ search.method, scales="free") +
  geom_abline(intercept = 0, slope = 1, size = 0.5)

heuristic_informativeness

initial_vs_actual_heuristic <- ggplot(df, aes(x = domain)) +
  geom_bar(aes(y = initial.heuristic.val, fill = "Initial Heuristic Value"), stat = "identity", position = "jitter") +
  geom_bar(aes(y = metric.search, fill = "Actual Cost"), stat = "identity", position = "jitter") +
  scale_fill_manual(name = "", values = c("Initial Heuristic Value" = "blue", "Actual Cost" = "red")) +
  labs(x = "Domain", y = "Heuristic Values", title = "Comparison: Heuristic Informativeness") +
  facet_wrap(~ domain, scales = "free")+
  theme(element_text(size = 18))

initial_vs_actual_heuristic

search_time <- ggplot(df, aes(x = domain, y = mean(search.time.msec), fill = domain), log10="y") +
  geom_col(show.legend = FALSE) +
  labs(x = "Domain", y = "Search Time (msec) [log10]", title = "Average Search Time per Domain") +
  scale_x_discrete(labels = c("block-group", "bw", "continuous", "discrete", "farmland", "fn-cntrs", "fn-cntrs-inv", "fn-cntrs-rnd", "ma-bw", "ma-sban", "plnt-wtring", "sailing", "sban")) +
  theme(element_text(size = 18))

search_time

duplicates <- ggplot(df, aes(x = domain, y = duplicates.detected, fill = domain), log10="y") +
  geom_col(show.legend = FALSE) +
  labs(x = "Domain", y = "Duplicates Detected [log10]", title = "Number of Duplicates Detected per Domain") +
  scale_x_discrete(labels = c("block-group", "bw", "continuous", "discrete", "farmland", "fn-cntrs", "fn-cntrs-inv", "fn-cntrs-rnd", "ma-bw", "ma-sban", "plnt-wtring", "sailing", "sban")) +
  theme(element_text(size = 18))

duplicates

plan_length <- ggplot(df, aes(x = domain, y = plan.length, fill = domain)) +
  geom_col(show.legend = FALSE) +
  labs(x = "Domain", y = "Plan Length [log10]", title = "Length of Plans per Domain") +
  scale_x_discrete(labels = c("block-group", "bw", "continuous", "discrete", "farmland", "fn-cntrs", "fn-cntrs-inv", "fn-cntrs-rnd", "ma-bw", "ma-sban", "plnt-wtring", "sailing", "sban")) +
  theme(element_text(size = 18))

plan_length

grounding_time <- ggplot(df, aes(x = domain, y = mean(grounding.time), fill = domain)) +
  geom_col(show.legend = FALSE) +
  labs(x = "Domain", y = "Grounding Time (msec)", title = "Average Grounding Time per Domain") +
  scale_x_discrete(labels = c("block-group", "bw", "continuous", "discrete", "farmland", "fn-cntrs", "fn-cntrs-inv", "fn-cntrs-rnd", "ma-bw", "ma-sban", "plnt-wtring", "sailing", "sban")) +
  theme(element_text(size = 18))

grounding_time

states_eval_vs_search_time <- ggplot(df, aes(x = states.evaluated, y = search.time.msec, color = domain), log10="y") +
  geom_point(size = 0.5) + 
  labs(x = "States Evaluated", y = "Search Time (msec)", title = "States Evaluated vs Search Time") +
  facet_wrap(~search.method, scales = "free") +
  scale_x_log10() + # Add this line for log10 scaling
  scale_y_log10() + # Add this line for log10 scaling
  scale_colour_viridis_d(option = "turbo") +
  geom_abline(intercept = 0, slope = 1, size = 0.5) + 
  theme(element_text(size = 18))

states_eval_vs_search_time


# List of plots
plots <- list(
  ground_actions, ground_fluents, ground_external_actions, heuristic_informativeness, initial_vs_actual_heuristic, search_time, states_eval_vs_search_time, duplicates, plan_length, grounding_time
)

# Save each plot as a PDF
for (i in seq_along(plots)) {
  ggsave(paste0("plot-", i, ".pdf"), plots[[i]], width = 14, height = 10)
}