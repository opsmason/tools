#!/usr/bin/env python3
import json
import sys
import os

"""
https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sourcing-external.html

This script retrieves AWS credentials stored in a 1Password item using the 1Password CLI (op),
and outputs them in a format that the AWS CLI can use via the credential_process configuration in an AWS config file.

This script take one arguement: the name of the 1Password item to query, e.g. 'Opsmason@AWS'
If it can not find the access key id or secret access key, it exits with a non-zero status.
"""
def main():
    if len(sys.argv) != 2:
        print(f"Usage: {os.path.basename(sys.argv[0])} '1Password Item Name'", file=sys.stderr)
        sys.exit(1)

    item_name = sys.argv[1]
    try:
        op_output = os.popen(f"op item get '{item_name}' --reveal --format json --fields 'label=access key id','label=secret access key'").read()
        credentials = json.loads(op_output)
    except Exception as e:
        print(f"Error retrieving or parsing 1Password item: {e}", file=sys.stderr)
        sys.exit(1)

    access_key_id = None
    secret_access_key = None

    for field in credentials:
        if field.get("label") == "access key id":
            access_key_id = field.get("value")
        elif field.get("label") == "secret access key":
            secret_access_key = field.get("value")

    if not access_key_id or not secret_access_key:
        print("Error: Could not find both access key id and secret access key in the 1Password item.", file=sys.stderr)
        sys.exit(1)

    aws_credentials = {
        "Version": 1,
        "AccessKeyId": access_key_id,
        "SecretAccessKey": secret_access_key
    }

    print(json.dumps(aws_credentials, indent=2))
    sys.exit(0)

if __name__ == "__main__":
    main()