const { exec } = require("child_process");
const core = require('@actions/core');

const swaggerFile = core.getInput('directory-filename');

function promisifyExec(cmd) {
    return new Promise((resolve, reject) => {
        exec(cmd, (error, stdout, stderr) => {
            if (error) {
                console.log(`error: ${error.message}`);
                return;
            }
            if (stderr) {
                console.log(`stderr: ${stderr}`);
            }
            console.log(`stdout: ${stdout}`);
            resolve(stdout ? stdout : stderr);
        });
    });
};

function execute(cmd) {
    exec(cmd, (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
        }
        console.log(`stdout: ${stdout}`);
    });
}

async function f() {
    console.log("hiiii")
    await promisifyExec("echo 'installing inso' & sudo npm install --unsafe-perm -g insomnia-inso");
    execute("echo 'version:' & inso --version");
    execute(`echo 'linting:' & inso lint spec ${swaggerFile}`);
    execute(`inso generate config ${swaggerFile} --output kong.yaml`);
}

f();
