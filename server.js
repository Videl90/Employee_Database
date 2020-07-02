var mysql = require("mysql");
var inquirer = require("inquirer");

//CONNECTION TO THE DATABASE
var connection = mysql.createConnection({
    host: "localhost",

    //CHOSEN PORT
    port: 8080,
    user: "root",
    password: "lorenasantos90",
    database: "employees_db"
});

connection.connect(function(err){
    if(err) throw err;
    employeesInfo();
});

//FUNCTION TO PROMPT THE USER

function employeesInfo(){
    inquirer
    .prompt({
        type:"list",
        name:"selectAction",
        message: "What would you like to do?",
        choices: [
            "View all employees", 
            "View all employees by department", 
            "View all employees by manager",
            "Add Employee",
            "Remove Employee",
            "Update Employee Role",
            "Update Employee Manager",
            "Exit"]
    })
}

function enterEmployees(){
    inquirer
    .prompt({
        type:"input",
        name: "employeeName",
        message:"Enter first name"
    },
    {
        type:"input",
        name:"employeeSecondName",
        message:"Enter the second name"
    })
}

function enterDepartment(){
    inquirer
    .prompt({
        type:"list",
        name:"enterDepartment",
        message:"Which department you'd like to search for?",
        choices: [
            "Sales",
            "Engineering",
            "Finance",
            "Legal",
        ]
    })
}

function enterManager(){
    inquirer
    .prompt({
        type:"input",
        name: "managerName",
        message:"Enter first name"
    },
    {
        type:"input",
        name:"managerSecondName",
        message:"Enter the second name"
    })
}

function enterRole(){
    inquirer
    .prompt({
        type:"list",
        name:"enterRole",
        message:"Which role you'd like to search for?",
        choices: [
            "Sales Lead",
            "Sales Person",
            "Lead Engineer",
            "Software Engineer",
            "Accountant",
            "Legal Team Lead",
            "Lawyer"
        ]
    })
}

function addEmployee(){
    inquirer
    .prompt({
        type:"input",
        name:"firstName",
        message:"Enter new employee's first name"
    },
    {
        type:"input",
        name:"firstName",
        message:"Enter new employee's last name"
    },
    {
        type:"list",
        name:"enterDepartment",
        message:"Enter employee's department?",
        choices: [
            "Sales",
            "Engineering",
            "Finance",
            "Legal",
        ]
    },
    {
        type:"list",
        name:"enterRole",
        message:"Enter your employee's role?",
        choices: [
            "Sales Lead",
            "Sales Person",
            "Lead Engineer",
            "Software Engineer",
            "Accountant",
            "Legal Team Lead",
            "Lawyer"
        ]
    },
    {
        type:"input",
        name:"enterSalary",
        message:"Which is your employee's salary"
    }
    
    )
}

