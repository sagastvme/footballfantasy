<template>

    <header class="text-lg w-full">
        <div class="flex items-center w-full">
            <div class="ml-2 mr-auto w-[56px] flex items-center justify-center py-2">
                <select class="bg-gray-700 text-md rounded-lg p-2 mr-auto ml-4">
                    <option value="" class="text-sm">4-3-3</option>
                    <option value="" class="text-sm">4-3-3</option>
                    <option value="" class="text-sm">4-3-3</option>
                    <option value="" class="text-sm">4-3-3</option>
                    <option value="" class="text-sm">4-3-3</option>
                    <option value="" class="text-sm">4-3-3</option>
                    <option value="" class="text-sm">4-3-3</option>

                </select>
            </div>

            <div class="w-48 mx-auto text-4xl flex items-center justify-center">
                <h1 class="text-center">SQUAD</h1>
            </div>

            <div class="ml-auto  w-20">
                <div class="mx-auto" style="width: 50px; height: 64px; "></div>
            </div>
        </div>
    </header>

    <div class="text-lg    rounded-lg  flex flex-grow  justify-center bg-opacity-70 bg-gray-900  w-full  flex-col ">

        <ul class="h-4/5 overflow-y-scroll gap-20 flex flex-col ">
            <li class=" w-full text-center">
                <TheFootballShirt primary="red" secondary="red" class="mx-auto"/>
                <span>GK</span>
            </li>
            <li class=" w-full  gap-6 items-center flex  justify-center">

            <span class=" text-center">
                 <TheFootballShirt primary="red" secondary="white" class=""/>
                DEF</span>
                <span class=" text-center">
                 <TheFootballShirt primary="red" secondary="white" class=""/>
                DEF</span>
                <span class=" text-center">
                 <TheFootballShirt primary="red" secondary="white" class=""/>
                DEF</span>
                <span class=" text-center">
                 <TheFootballShirt primary="red" secondary="white" class=""/>
                DEF</span>


            </li>

            <li class=" w-full gap-6 items-center flex  justify-center">
              <span class=" text-center">
                 <TheFootballShirt primary="white" secondary="red" class=""/>
                MID</span>
                <span class=" text-center">
                 <TheFootballShirt primary="white" secondary="red" class=""/>
                MID</span>
                <span class=" text-center">
                 <TheFootballShirt primary="white" secondary="red" class=""/>
                MID</span>
                <span class=" text-center">
                 <TheFootballShirt primary="white" secondary="red" class=""/>
                MID</span>
                <span class=" text-center">
                 <TheFootballShirt primary="white" secondary="red" class=""/>
                MID</span>


            </li>

            <li class=" w-full gap-6 items-center flex  justify-center">

  <span class=" text-center">
                 <TheFootballShirt secondary="white" primary="white" class=""/>
                STR</span>



            </li>

        </ul>

    </div>

</template>
<script>
import TheFootballShirt from "@/components/TheFootballShirt.vue";

export default {
    name: "TheSquad",
    components: {TheFootballShirt}
}
</script>

<style scoped>

</style>