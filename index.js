const { exec } = require("shelljs");

process.argv.shift();
process.argv.shift();

const executeCommand = process.argv.join(" ");

exec(`./surf.sh ${executeCommand}`);