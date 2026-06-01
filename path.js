var path = require('path');

// Get the base name of a file

const p = 'E:/flutter/NodeJs Tutorial/path.js';
console.log('Base name:', path.basename(p));

// Get the directory name of a file
console.log('Directory name:', path.dirname(p));

// Get the file extension
console.log('File extension:', path.extname(p));

// join multiple path segments
const joinedPath = path.join('folder1', 'folder2','file.txt');
console.log('Joined path:', joinedPath);

// resolve a sequence of paths into an absolute path
const absolutePath = path.resolve('folder1', 'folder2', 'file.txt');
console.log('Absolute path:', absolutePath);

// normalize a path, resolving '..' and '.' segments
const normalizedPath = path.normalize('folder1/../folder2/./file.txt');
console.log('Normalized path:', normalizedPath);

