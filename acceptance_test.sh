#!/bin/bash
test $(curl localhost:8080/sum?a=1&b=4) -eq 3
