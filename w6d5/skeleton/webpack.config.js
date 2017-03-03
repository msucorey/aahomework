var path = require('path');

module.exports = {
  entry: './app.jsx',
  output: {
    path: path.resolve(__dirname),
    filename: 'bundle.js',
  },
  module: {
    loaders: [
      {
        test: [/\.jsx?$/],
        exclude: /(node_modules)/,
        loader: 'babel-loader',
        query: {
          presets: ['es2015', 'react']
        }
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
};

// In webpack.config.js:
// Set your entry and output files.
// Add Babel transpilation.
// Add a source map.
// Ensure that .js and .jsx files resolve automatically.
