#!/bin/bash
test $(curl localhost:8080/sum?a=5\&b=4) -eq 9
