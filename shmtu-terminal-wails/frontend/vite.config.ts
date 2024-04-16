import {defineConfig} from 'vite'
import vue from '@vitejs/plugin-vue'
import path from 'path'

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [vue()],
    resolve: {
        alias: {
            // npm install path --save
            // npm install @types/node --save-dev
            '@': path.resolve(__dirname, './src')
        }
    },
})
