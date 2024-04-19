#!/bin/sh

set -x

npx prisma migrate deploy --schema ./packages/prisma/schema.prisma
npm install -D @playwright/test@latest
npx playwright install --with-deps
node apps/web/server.js
