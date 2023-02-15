import legacy from '@vitejs/plugin-legacy'
import ViteRestart from 'vite-plugin-restart';

// https://vitejs.dev/config/
export default ({ command }) => ({
  base: command === 'serve' ? '' : '/dist/',
  build: {
    emptyOutDir: true,
    manifest: true,
    outDir: './web/dist/',
    rollupOptions: {
      input: {
        app: './src/js/app.ts',
      }
    },
  },
  plugins: [
    legacy({
      targets: ['defaults', 'not IE 11']
    }),
    ViteRestart({
      reload: [
          './templates/**/*',
      ],
    }),
  ],
  server: {
    fs: {
        strict: false
      },
      host: '0.0.0.0',
      origin: 'http://localhost:3000/',
      port: 3000,
      strictPort: true,
  },
});