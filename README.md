<div align="center">

# 📸 AI Image Caption Backend API — Express & Gemini

<p align="center">
  <strong>Node.js & Express REST microservice that uploads photos to ImageKit, analyzes visual content using Google Gemini Vision, generates viral social media captions, and stores posts in MongoDB.</strong>
</p>

<p align="center">
  <a href="#-overview">Overview</a> •
  <a href="#-key-features">Key Features</a> •
  <a href="#-tech-stack--architecture">Tech Stack</a> •
  <a href="#-project-structure">Project Structure</a> •
  <a href="#-getting-started">Getting Started</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Category-AI%20Audio%20%26%20Video%20Intelligence-7c3aed?style=for-the-badge" alt="Category: AI Audio & Video Intelligence" />
  <img src="https://img.shields.io/badge/Tech%20Stack-Express.js%20%7C%20ImageKit%20%7C%20Google%20GenAI-10b981?style=for-the-badge" alt="Tech Stack: Express.js | ImageKit | Google GenAI" />
  <img src="https://img.shields.io/badge/Status-Production%20Ready-8b5cf6?style=for-the-badge" alt="Status: Production Ready" />
  <img src="https://img.shields.io/badge/License-MIT-f59e0b?style=for-the-badge" alt="License: MIT" />
</p>

</div>

---

## 📌 Overview

**AI-Image-Caption-Backend-API** automates social media publishing workflows. When users upload images through the authenticated API, the service uploads the binary to ImageKit cloud CDN, forwards the image stream to Google Generative AI (Gemini Vision) to formulate punchy captions and hashtags, and persists the resulting metadata in MongoDB.

---

## ✨ Key Features

- 🔐 **JWT User Authentication**: Secure registration and login workflows with hashed passwords (`bcryptjs`) and HTTP-only cookies.
- 🖼️ **ImageKit CDN Uploads**: Scalable cloud asset hosting with automatic image transformations and CDN URLs.
- 🤖 **Google Gemini Vision Intelligence**: Multi-modal visual understanding to compose creative, context-aware captions and trending hashtags.
- 🗄️ **Persistent Post Feeds**: Mongoose models managing image records, generated descriptions, and user associations.
- ⚡ **Streamlined REST Endpoints**: Modular controllers for authentication (`/auth`) and posts (`/posts`).

---

## 🛠️ Tech Stack & Architecture

| Layer | Technologies |
|---|---|
| **Backend Framework** | Node.js, Express.js |
| **Database & Models** | MongoDB, Mongoose ODM |
| **AI Vision Engine** | Google Generative AI (`@google/genai` Gemini Vision) |
| **Cloud Storage** | ImageKit Node.js SDK |
| **Auth & Security** | JSON Web Tokens (`jsonwebtoken`), `bcryptjs`, `cookie-parser` |
| **File Handling** | Multer |

---

## 📂 Project Structure

```text
AI-Image-Caption-Backend-API/
├── server.js                  # Application server entry point
├── src/
│   ├── app.js                 # Express app initialization & middleware
│   ├── db/
│   │   └── db.js              # MongoDB Mongoose connection
│   ├── models/
│   │   ├── user.model.js      # User schema
│   │   └── post.js            # Post with image URL and AI caption
│   ├── controllers/
│   │   ├── auth.contr.js      # Register & login controllers
│   │   └── post.contr.js      # Image upload & caption generation
│   ├── middlewares/
│   │   └── auth.middleware.js # Protected route guard
│   ├── routes/
│   │   ├── auth.js            # Auth endpoints
│   │   └── post.js            # Post endpoints
│   └── service/
│       ├── storag.service.js  # ImageKit configuration
│       └── ai.service.js      # Google Gemini Vision prompt handler
├── package.json
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites
- [Node.js](https://nodejs.org/) (v16+)
- [MongoDB](https://www.mongodb.com/) instance
- [ImageKit](https://imagekit.io/) account credentials
- [Google Gemini API Key](https://aistudio.google.com/)

### Installation & Run

1. **Install dependencies**:
   ```bash
   npm install
   ```

2. **Configure `.env`**:
   ```env
   PORT=3000
   MONGO_URI=mongodb://localhost:27017/caption_generator
   JWT_SECRET=your_jwt_secret
   IMAGEKIT_PUBLIC_KEY=your_imagekit_public_key
   IMAGEKIT_PRIVATE_KEY=your_imagekit_private_key
   IMAGEKIT_URL_ENDPOINT=https://ik.imagekit.io/your_id
   GEMINI_API_KEY=your_gemini_api_key
   ```

3. **Start the server**:
   ```bash
   npm start
   # Or for development:
   npx nodemon server.js
   ```

---

## 👤 Author
- **Nikhil** ([GitHub](https://github.com/nikhilcodeworks))

---

## 📜 License

Distributed under the **MIT License**. See `LICENSE` for more information.
