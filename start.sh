#!/bin/bash
echo "Installing root dev deps..."
npm install
echo "Installing backend deps..."
npm install --prefix backend
echo "Installing frontend deps..."
npm install --prefix frontend-web
echo "Run both services (frontend on :3000, backend on :5000)"
npm run start:all
