const mysql = require('mysql');
const inquirer = require('inquirer');


const connection = mysql.createConnection({
    multipleStatements: true,
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "employee_db"
});

connection.connect(function(err){
    if(err) throw err;
    start();
});

function start() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What would you like to do?",
            choices: [
                "View all departments",
                "View all roles",
                "View all employees",
                "Add a department",
                "Add a role",
                "Add an employee",
                "Update employee role",
                "Exit"
            ]
        })
        .then(function(answer){
            if(answer.action === "View all departments"){
                viewDepartments();
            } else if (answer.action === "View all roles"){
                viewRoles();
            } else if (answer.action === "View all employees"){
                viewEmployees();
            } else if (answer.action === "Add a department"){
                addDepartment();
            } else if (answer.action === "Add a role"){
                addRole();
            } else if (answer.action === "Add an employee"){
                addEmployee();
            } else if (answer.action === "Update employee role"){
                updateRole();
            } else if (answer.action === "Exit"){
                connection.end();
            }
        })
}

