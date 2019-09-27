#!/usr/bin/env bash

hadoop fs -rm -r /data
hadoop fs -put ./data /
hadoop fs -ls /data
hadoop fs -rm -r /output

hadoop jar ./target/wc-1.0.jar WordCount /data /output
hadoop fs -cat /output/part-r-00000
