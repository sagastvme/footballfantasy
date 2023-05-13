<template>

        <header class="p-2 text-4xl flex items-center justify-center  w-full">
            <h1 class="text-center p-1 uppercase">Profile</h1>
        </header>
        <div class="text-lg gap-8   rounded-lg  flex flex-grow  justify-center bg-opacity-70 bg-gray-900  w-full  flex-col ">
            <div class=" flex-col flex my-auto h-4/5 justify-center gap-8 rounded-lg ">
            <img class="mx-auto w-[70px] h-[70px] object-cover rounded-full" src="https://www.realmadrid.com/img/vertical_380px/cristiano_550x650_20180917025046.jpg">
            <div class="mx-auto p-2 w-full flex items-center">
                <p class="mr-auto">Username:</p>
                <span class="ml-auto">sagastvme</span>
            </div>
            <div class="mx-auto p-2 w-full flex items-center">
                <p class="mr-auto pr-4">Email:</p>
                <span class="ml-auto overflow-x-scroll">sagastvme@gmail.com</span>
            </div>
            <button class="p-3 rounded-lg bg-opacity-90 bg-gray-300 text-black">Change password</button>
            <button class="bg-red-500 p-3 rounded-lg bg-opacity-60">Log out</button>
        </div>
        </div>



</template>

<script>
export default {
    name: "TheProfile",

}
</script>

<style scoped>

</style>