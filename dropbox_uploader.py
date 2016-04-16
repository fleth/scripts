#!/usr/bin/python

import sys
import dropbox
from dropbox.exceptions import ApiError

# setting your access token
dbx = dropbox.Dropbox('')

file_path = sys.argv[1]
upload_path = sys.argv[2]

with open(file_path, 'r') as f:
	try:
		dbx.files_upload(f, upload_path)
	except ApiError as err:
		print(err)
		sys.exit()
