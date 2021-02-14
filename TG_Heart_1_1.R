library(tidyverse)
library(broom)
df1 <- tibble(t = seq(-pi, 0, .01),
                x1 = 16 * (sin(t)) ^ 2,
                x2 = -x1,
                y = 13 * cos(t) -
                  5 * cos(2 * t) -
                  2 * cos(3 * t) -
                  cos(4 * t)) %>%
  gather(side, x, x1, x2)

heart <- df1 %>%
  crossing(t1 = max(df1$t) + seq_len(20)) %>%
  arrange(((side == "x2") - 1) * t)

p1 <- ggplot(df1, aes(x, y, frame = round(t, 1))) +
  geom_path(aes(group = side)) +
  geom_polygon(aes(alpha = t1), data = heart, fill = "red", show.legend = FALSE) +
  geom_text(aes(x = 0, y = 0, label = "Happy Valentine's Day", alpha = t1),
            data = heart, size = 8, color = "white", show.legend = FALSE) +
  coord_equal() +
  theme_bw()
ggsave("Happy_Valentine.jpeg",p1)


