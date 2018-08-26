const path = require('path');
const fs = require('fs-extra');  
const gulp = require('gulp');
const clean = require('gulp-clean');
const { exec } = require('child_process');

const importPath = 'local_server/service/hello_world_service.proto';
const exportPath = './src/app/proto';
const rootPath = path.resolve('../');

gulp.task('default', ['protoc']);
gulp.task('protoc', () => {
  // Create a proto folder
  if (!fs.existsSync(exportPath)) {
    fs.mkdirSync(exportPath);
  }

  var protoImportList = [];
  // Copy all packages to the proto folder
  function copyPackage(relativePath) {
    const absolutePath = path.join(
      rootPath,
      relativePath
    );
    const filename = path.parse(absolutePath).base;
    protoImportList.push(filename);
    const newPackagePath = path.join(exportPath, filename);
    fs.copySync(absolutePath, newPackagePath);

    return newPackagePath;
  }
  const newCodeReviewPath = copyPackage(importPath);

  // Create proto functions from the packages in the proto folder
  const protoImport = protoImportList.join(' ');
  exec(
    'protoc ' +
      `--proto_path=${exportPath} ` +
      `--js_out=import_style=commonjs,binary:${exportPath} ` +
      '--plugin=protoc-gen-ts=./node_modules/.bin/protoc-gen-ts ' +
      `--ts_out=service=true:${exportPath} ` +
      protoImport,
    protocOnLoad
  );

  // When protoc finished generating proto functions
  function protocOnLoad(error) {
    if (error) {
      throw error;
    }

    // Remove all *.proto files from the proto folder
    gulp.src(path.join(exportPath, '**/*.proto'))
      .pipe(clean())
      .on('data', () => {})
      .on('end', removingOnLoad);
  }

  // When all *.proto files are removed
  function removingOnLoad() {
    console.log('Proto functions are successfully created.');
  }
});
