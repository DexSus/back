const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('inv_manager', 'postgres', 'postgres', {
  host: '206.189.52.50',
  port: '5002',
  dialect: 'postgres',
});

  module.exports = sequelize;