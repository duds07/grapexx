# GrapeX Monorepo (Final)

Contains backend (Node.js + Express + MongoDB + JWT) and frontend-web (React + Tailwind + Axios).

Quick start (requires Node.js):

1. Install root dev deps:
   npm install
2. Install backend & frontend deps:
   npm install --prefix backend
   npm install --prefix frontend-web
3. Create a MongoDB Atlas cluster and set MONGO_URI env var for backend.
   export MONGO_URI="your_mongo_uri"
   export JWT_SECRET="a_long_secret"
4. Run all services:
   npm run start:all

Backend endpoints (examples):
- POST /api/auth/register  { username, password }
- POST /api/auth/login     { username, password }  -> returns { token, username, role }
- POST /api/analysis       (multipart: leaf image + user) -> saves scan
- GET  /api/analysis/user/:email
- GET  /api/admin/scans
- POST /api/model/upload   (admin) -> upload latest.tflite

Frontend: open http://localhost:3000
