//router.js

import { createRouter, createWebHistory } from 'vue-router';
import TheWelcome from "@/components/TheWelcome.vue";
import TheLogin from "@/components/TheLogin.vue";
import TheRegister from "@/components/TheRegister.vue";
import TheHome from "@/components/TheHome.vue";

const router = createRouter({
    history: createWebHistory(),
    linkActiveClass: 'active',
    linkExactActiveClass: 'active',
    routes:[
        { path: '/', component: TheWelcome},
        {path:'/login', component: TheLogin, name:'login'},
        { path:'/register', component: TheRegister, name:'register'},
        { path:'/home', component: TheHome, name:'home'}
       ],
    scrollBehavior(to,from,savedPosition){
        if(savedPosition){
            return savedPosition;
        }
        return {left:0, top:0}
    }
});

export default router;