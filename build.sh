#!/bin/bash

build_name=$1

data_generator/"$build_name"

docker build -t mlflow:"$build_name" .