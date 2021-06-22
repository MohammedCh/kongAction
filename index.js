// const o2k = require('openapi-2-kong');
// const fs = require('fs');
// const json2yaml = require('json2yaml');
// const yaml = require('js-yaml');
// const jsonFile = require('./swagger.json');
// const _ = require('lodash');


// async function generateConfigFromJson(jsonFile) {
//     const tags = [];
//     const type = 'kong-declarative-config'; // or 'kong-for-kubernetes'


//     const specJSON = JSON.stringify(jsonFile);
//     try {
//         // generate YAML object from json spec
//         const config = await o2k.generateFromString(specJSON, type, tags);

//         YAMLobj = json2yaml.stringify(config.documents);

//         // data is the file contents as a single unified string
//         // .split('\n') splits it at each new-line character and all splits are aggregated into an array (i.e. turns it into an array of lines)
//         // .slice(2) returns a view into that array starting at the third entry from the front
//         // .join() takes that array and re-concatenates it into a string
//         const linesExceptFirst = YAMLobj.split('\n').slice(2).join('\n');

//         // generate file with the kong config for the services in the openAPI spec file
//         fs.writeFileSync('spec2kong.yaml', linesExceptFirst);

//     } catch (error) {
//         console.error(error)
//         return
//     }
// }


// function createNewConfig() {
//     try {
//         // read kong config that was generated from the openAPI spec file
//         const config1 = yaml.safeLoad(fs.readFileSync('./spec2kong.yaml', 'utf8'));
//         const services1 = config1.services[0];
//         const upstreams1 = config1.upstreams[0];

//         // read existing kong config
//         const config2 = yaml.safeLoad(fs.readFileSync('./kong.yaml', 'utf8'));
//         const services2 = config2.services[0];
//         const upstreams2 = config2.upstreams[0];

//         // combine the existing Kong config with the Kong config generated from the openAPI spec
//         const mergedServices = [services1, services2];
//         const mergedUpstreams = [upstreams1, upstreams2];
//         const _format_version = '1.1';
//         const documents = { _format_version, services: mergedServices, upstreams: mergedUpstreams };

//         // generate new kong config file
//         fs.writeFileSync('finalKong.yaml', yaml.safeDump(documents));

//     } catch (e) {
//         console.log(e);
//     }
// }

async function main() {
    console.log("hi")
}

main();