#!/bin/bash

echo -n  "Introduzca la palabra que desea buscar: ";read palabra
ls | grep $palabra 2>/dev/null