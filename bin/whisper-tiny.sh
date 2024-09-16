#!/bin/sh

whisper --model tiny --language en --task transcribe --temperature 0  --patience 1.0 $1 

