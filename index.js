const express = require('express');  // Importa Express
const app = express();  // Crea una instancia de Express
const port = 3000;  // Define el puerto donde el servidor escuchará

// Define una ruta GET en "/"
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// Hace que el servidor escuche en el puerto 3000
app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
