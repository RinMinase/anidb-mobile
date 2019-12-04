module.exports = {
  root: true,
  plugins: ['react', 'react-native'],
  ignorePatterns: ['metro.config.js'],
  parserOptions: {
    ecmaVersion: 7,
    sourceType: 'module',
    ecmaFeatures: {
        jsx: true,
    }
  },
};
