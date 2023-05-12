<template>
    <div class="h-screen flex flex-col">
    <TheHeader/>
        <span class="flex items-center justify-center w-full mt-10">
      <h2 class="text-4xl">Login</h2>   </span>
        <div class="flex-grow gap-10 rounded-lg mb-72 bg-gray-700 mt-14 py-16 px-2 flex flex-col items-center justify-center  bg-opacity-40">

            <form action="" class="flex flex-col justify-center gap-5  h-full w-full">
                <label for="email" class="hidden">Email</label>
                <input class="h-20 text-2xl border-white border rounded-lg bg-transparent placeholder:text-center   " type="email" placeholder="Email" id="email">

                <label for="password" class="hidden">Password</label>
                <input type="password" class="text-2xl h-20 border-white border rounded-lg bg-transparent placeholder:text-center  " placeholder="Password" id="password">

                <label class="text-center text-xl" for="remember">
                    <input class="mr-5 w-4 h-4" type="checkbox" name="remember" id="remember">
                    Remember me
                </label>



                <input type="submit" class="cursor-pointer  text-black text-2xl bg-gray-300 h-20 border-white border rounded-lg  placeholder:text-center  " value="Login" >

            </form>
        </div>
    </div>

</template>

<script>
import TheHeader from "@/components/TheHeader.vue";

export default {
    name: "TheLogin",
    components: {TheHeader}
}
</script>

<style scoped>

</style>