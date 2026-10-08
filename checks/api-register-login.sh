#!/bin/sh
# Register through the API, then log in: the API writes to and reads from the seeded MongoDB
# and hands out a token.
u="check$$@example.test"
curl -s -o /dev/null -d "user=$u" -d "pass=check-pass" http://app:8090/api/user/register
curl -s -d "user=$u" -d "pass=check-pass" http://app:8090/api/user/login | grep -q 'token'
