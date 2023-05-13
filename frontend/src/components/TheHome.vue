<template>
    <div class="h-screen flex flex-col bg-opacity-40 bg-gray-700">
        <router-view/>
        <TheBottomMenu/>
    </div>
</template>


<script>
import TheBottomMenu from "@/components/TheBottomMenu.vue";

export default {
    name: "TheHome",
    components: {TheBottomMenu}
}
</script>

<style scoped>

</style>