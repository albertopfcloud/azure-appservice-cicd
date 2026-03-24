const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

// Endpoint principal
app.get('/', (req, res) => {
    res.json({
        status: "success",
        message: "¡Hola desde Azure App Service! CI/CD funcionando perfectamente.",
        version: "1.0.0"
    });
});

// Endpoint de healthcheck
app.get('/health', (req, res) => {
    res.json({ status: "healthy", uptime: process.uptime() });
});

app.listen(port, () => {
    console.log(`API ejecutándose en el puerto ${port}`);
});