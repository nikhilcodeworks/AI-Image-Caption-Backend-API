# 🚀 How to Run — AI-Image-Caption-Backend-API

This guide provides instructions to launch the **AI-Image-Caption-Backend-API** backend API service.

---

## ⚡ Option 1: 1-Click Instant Run (Windows)

Simply double-click the **`run.bat`** file inside this folder!

It automatically:
1. Checks for Node.js in your system.
2. Installs required packages via `npm install`.
3. Opens [`http://localhost:3000`](http://localhost:3000) in your browser.
4. Starts the API server.

---

## 🛠️ Option 2: Manual Terminal Execution

### Prerequisites
- [Node.js](https://nodejs.org/) (v16+)
- [npm](https://www.npmjs.com/)

### Step-by-Step Commands

1. **Navigate to the project folder**:
   ```bash
   cd "AI-Image-Caption-Backend-API"
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Configure Environment (if applicable)**:
   If a `.env.example` file exists, create a copy named `.env` and fill in your credentials.

4. **Start the server**:
   ```bash
   npm start
   # Or directly:
   node server.js
   ```

5. **Test the API**:
   Access [http://localhost:3000](http://localhost:3000) or test endpoints with Postman / cURL.

---

## 🌐 Configuration

| Property | Value |
| :--- | :--- |
| **Server Entry** | `server.js` |
| **Default Port** | `http://localhost:3000` |
| **Stop Server** | Press `Ctrl + C` in the running terminal |
