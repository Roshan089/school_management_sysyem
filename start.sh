#!/bin/bash

# Wait for PostgreSQL to be ready
until nc -z postgres 5432; do
  echo "Waiting for PostgreSQL..."
  sleep 2
done

# Run Prisma migrations
npx prisma migrate deploy

# Start the Next.js application
npm run dev
