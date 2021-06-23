const inso = require('insomnia-inso')
async function main() {
    try {
        console.log(`Hello`);
    } catch (error) {
        core.setFailed(error.message);
    }}

main();