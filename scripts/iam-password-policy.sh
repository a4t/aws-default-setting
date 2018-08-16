#!/bin/bash

MINIMUM_PASSWORD_LENGTH=14
PASSWORD_REUSE_PREVENTION=10

aws iam update-account-password-policy \
  --minimum-password-length $MINIMUM_PASSWORD_LENGTH \
  --require-symbols \
  --require-numbers \
  --require-uppercase-characters \
  --require-lowercase-characters \
  --allow-users-to-change-password \
  --password-reuse-prevention $PASSWORD_REUSE_PREVENTION
