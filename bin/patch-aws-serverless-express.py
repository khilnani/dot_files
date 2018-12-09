#!/usr/bin/env python


code_file = 'node_modules/aws-serverless-express/src/index.js'
bad_code = '    return `/tmp/server-${socketPathSuffix}.sock`'
good_code = """    const os = require('os')
    const tmpDir = os.tmpdir()
    return tmpDir + `/server-${socketPathSuffix}.sock`
"""

new_text = None

with open(code_file) as f:
    print('Reading %s' % code_file)
    file_content = f.read()
    if bad_code in file_content:
        print('Found code to patch')
        new_text = file_content.replace(bad_code, good_code)
    else:
        print('Bad code not found')
        new_text = None
    
if new_text:
    print('Updating %s' % code_file)
    with open(code_file, "w") as f:
        f.write(new_text)
