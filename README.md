# Docker Selenium Memory Usage Test Results

Test              | Hub Count | Node Count | Sessions Per Node | Test Count| Average Node Mem | Average Swap Node Mem | Test Duration |
:-----------------|----------:|-----------:|------------------:|----------:|-----------------:|----------------------:|--------------:|
stress-chrome-1   |         1 |         10 |                 1 |       200 |        179.56 Mb |                  0 Mb |      00:04:09 |
stress-firefox-1  |         1 |         10 |                 1 |       200 |        229.97 Mb |                  0 Mb |      00:05:10 |
stress-chrome-2   |         1 |         10 |                 2 |       250 |        207.10 Mb |                  0 Mb |      00:03:48 |
stress-firefox-2  |         1 |         10 |                 2 |       250 |        280.38 Mb |                  0 Mb |      00:04:32 |
stress-chrome-2.5 |         1 |          5 |                 2 |       200 |        187.46 Mb |                  0 Mb |      00:09:20 |
stress-firefox-2.5|         1 |          5 |                 2 |       200 |        219.87 Mb |                  0 Mb |      00:04:06 |
stress-chrome-5   |         1 |          3 |                 5 |       200 |        323.77 Mb |                  0 Mb |      00:02:57 |
stress-firefox-5  |         1 |          3 |                 5 |       200 |        316.01 Mb |                  0 Mb |      00:04:36 |

The metrics collected reflect the memory usage for the container named.
