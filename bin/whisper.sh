#!/bin/sh


whisper --model large --language en --task transcribe --temperature 0  --patience 1.0 $1 

