#!/bin/sh

set -x

npx prisma migrate deploy --schema ./packages/prisma/schema.prisma
npx playwright install
node apps/web/server.js
