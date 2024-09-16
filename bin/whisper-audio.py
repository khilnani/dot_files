import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)

import sys
import whisper

print('---')

file_str = sys.argv[1]
print('file', file_str)

model_str = sys.argv[2] if len(sys.argv) > 2 else 'tiny'
print('model', model_str)

print('---')

print('loading model ..')
model = whisper.load_model(model_str)

print('---')

result = model.transcribe(file_str, fp16=False)

print(result['text'])

