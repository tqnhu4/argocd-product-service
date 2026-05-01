FROM node:20-alpine

# Set working directory
WORKDIR /app

# Chỉ copy package trước để tận dụng cache
COPY package*.json ./

# Cài dependency production thôi
RUN npm install --omit=dev

# Copy source code
COPY . .

# Set environment
ENV NODE_ENV=production

# Expose port (nếu cần)
# EXPOSE 3000

# Run app
CMD ["node", "index.js"]