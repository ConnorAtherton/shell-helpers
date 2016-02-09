#!/bin/bash

is_container_running() {
  docker ps -a | grep -q $CONTAINER
}
