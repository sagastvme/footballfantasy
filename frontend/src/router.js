//router.js

import { createRouter, createWebHistory } from 'vue-router';
import TheWelcome from "@/components/TheWelcome.vue";
import TheLogin from "@/components/TheLogin.vue";
import TheRegister from "@/components/TheRegister.vue";
import TheHome from "@/components/TheHome.vue";
import TheProfile from "@/components/TheProfile.vue";
import ThePoints from "@/components/ThePoints.vue";
import TheMarket from "@/components/TheMarket.vue";
import TheSquad from "@/components/TheSquad.vue";

const router = createRouter({
    history: createWebHistory(),
    linkActiveClass: 'active',
    linkExactActiveClass: 'active',
    routes:[
        { path: '/', component: TheWelcome},
        {path:'/login', component: TheLogin, name:'login'},
        { path:'/register', component: TheRegister, name:'register'},
        {
            path: '/home',
            component: TheHome,
            name: 'home',
            children: [
                {
                    name: 'points',
                    path: '/points',
                    component: ThePoints
                },
                {
                    name: 'profile',
                    path: '/profile',
                    component: TheProfile
                },
                {
                    name: 'market',
                    path: '/market',
                    component: TheMarket
                },
                {
                    name: 'squad',
                    path: '/squad',
                    component: TheSquad
                }
            ]
        },
        { path: '/:notFound(.*)', redirect: '/'}


    ],
    scrollBehavior(to,from,savedPosition){
        if(savedPosition){
            return savedPosition;
        }
        return {left:0, top:0}
    }
});

export default router;