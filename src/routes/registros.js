const express = require ('express');

const router = express.Router();

const pool = require('../database');
const {isLoggedin} = require('../lib/auth');

router.get('/add', isLoggedin, (req,res) => {
    res.render('registros/add');
});

router.post('/add', async(req,res) => {
    
    const {medio, sistema, origen_inconveniente, motivo, solucion} = req.body;
    const nuevoRegistro = {
        medio, 
        sistema, 
        origen_inconveniente, 
        motivo, 
        solucion
    };
    await pool.query('INSERT INTO registro set ?',[nuevoRegistro]);
    req.flash('success', 'Agregado satisfactoriamente.');
    res.redirect('/registros');    
});

router.get('/', isLoggedin, async(req,res) => {
    const registros = await pool.query('SElECT * FROM registro');
    res.render('registros/list', { registros});
});
module.exports = router; 