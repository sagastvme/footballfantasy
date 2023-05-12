<template>
    <div class="h-screen flex flex-col  ">
        <TheHeader/>
        <span class="flex items-center justify-center w-full mt-10">
      <h2 class="text-4xl">Register</h2>   </span>

        <div class=" mt-6 flex-grow gap-10  mb-72   flex flex-col items-center justify-center  pb-10">

            <form action="" class="flex flex-col justify-center gap-5 bg-gray-700 bg-opacity-40 py-16 px-2 rounded-lg  h-full w-full">
                <label for="email" class="hidden">Email</label>
                <input class="h-20 text-2xl border-white border rounded-lg bg-transparent placeholder:text-center   " type="email" placeholder="Email" id="email">

                <label for="Username" class="hidden">Username</label>
                <input class="h-20 text-2xl border-white border rounded-lg bg-transparent placeholder:text-center   " type="text" placeholder="Username" id="Username">




                <label for="password" class="hidden">Password</label>
                <input type="password" class="text-2xl h-20 border-white border rounded-lg bg-transparent placeholder:text-center  " placeholder="Password" id="password">


                <label for="Rpassword" class="hidden">Repeat password</label>
                <input type="password" class="text-2xl h-20 border-white border rounded-lg bg-transparent placeholder:text-center  " placeholder="Repeat password" id="Rpassword">


                <input type="submit" class="cursor-pointer  text-black text-2xl bg-gray-300 h-20 border-white border rounded-lg  placeholder:text-center  " value="Register" >

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