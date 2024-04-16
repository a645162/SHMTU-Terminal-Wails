import {createRouter, createWebHistory} from "vue-router";

import {routesBill} from "./Bill";

const routes = [
    {
        path: "/",
        component: () => import("../views/HomePage.vue")
    },
    {
        path: "/settings",
        component: () => import("../views/Settings/SettingsMenu.vue")
    },

    ...routesBill,
]

export const router = createRouter({
    history: createWebHistory(),
    routes
})
