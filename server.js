const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

// Main endpoint
app.get('/', (req, res) => {
    res.json({
        status: "success",
        message: "Hello from Azure App Service! CI/CD is working perfectly.",
        version: "1.0.0"
    });
});

// Healthcheck endpoint (standard DevOps practice for monitoring)
app.get('/health', (req, res) => {
    res.json({ 
        status: "healthy", 
        uptime: process.uptime() 
    });
});

// Start the server
app.listen(port, () => {
    console.log(`API running on port ${port}`);
});