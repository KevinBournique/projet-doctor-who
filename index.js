const express = require('express');
const app = express();
const router = require('./app/router/router');

/**
 * Paramétrage du serveur -> app.set
 */
app.set('view engine', 'ejs');
app.set('views', './app/views');

/**
 * Middlewares -> app.use
 */
app.use(express.static('public'));

/**
 * Routes à charger en dernier la plupart du temps 
 * */ 
app.use(router);

/**
 * Je démarre mon serveur
 */
app.listen(8584, () => {
    console.log('Listening on port http://localhost:8584');
});