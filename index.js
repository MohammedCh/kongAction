const { exec } = require("child_process");

function promisifyExec(cmd) {
    return new Promise((resolve, reject) => {
        exec(cmd, (error, stdout, stderr) => {
            if (error) {
                console.log(`error: ${error.message}`);
                return;
            }
            if (stderr) {
                console.log(`stderr: ${stderr}`);
                return;
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
            return;
        }
        console.log(`stdout: ${stdout}`);
    });
}

try {
    console.log("hiiii")
    await promisifyExec("echo 'installing inso' & sudo npm install --unsafe-perm -g insomnia-inso")
    execute("echo 'version:' & inso --version");
    execute("echo 'linting:' & inso lint spec 'swagger.json'");
    execute("echo 'Generate declarative config:' & inso generate config 'swagger.json' --type declarative | tee kong.yml");
} catch (error) {
    console.log(error);
}