<template>
    <nav class="pb-2  text-xs flex flex-row gap-5 w-full  h-20 mt-auto  ">
        <!--   <p class="flex flex-col justify-center items-center w-1/5">
             <span class="mt-2">
                 <svg fill="white" height="44px" width="44px" version="1.1" id="Capa_1"
                      xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                      viewBox="0 0 303.124 303.124" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g
                         id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g
                         id="SVGRepo_iconCarrier"> <path
                         d="M290.245,85.686c-1.136-1.469-2.889-2.33-4.747-2.33h-67.717L163.252,2.642c-1.855-2.746-5.585-3.468-8.331-1.613 c-2.746,1.855-3.468,5.584-1.613,8.33l49.991,73.997H87.169l49.99-73.997c1.855-2.746,1.133-6.475-1.613-8.33 c-2.746-1.855-6.476-1.134-8.331,1.613L72.687,83.356H6c-1.857,0-3.61,0.86-4.747,2.33c-1.136,1.469-1.528,3.382-1.06,5.18 l41.773,160.635c0.688,2.644,3.075,4.49,5.807,4.49h195.953c2.732,0,5.119-1.846,5.807-4.49l41.772-160.635 C291.772,89.069,291.381,87.156,290.245,85.686z M253.011,190.445h-59.857v-41.546h70.661L253.011,190.445z M181.153,190.445h-70.81 v-41.546h70.81V190.445z M181.153,202.445v41.546h-70.81v-41.546H181.153z M27.684,148.899h70.66v41.546H38.487L27.684,148.899z M110.344,136.899V95.356h70.81v41.543H110.344z M75.862,95.356c0.002,0,0.004,0,0.007,0c0.003,0,0.005,0,0.008,0h22.466v41.543 H24.563L13.76,95.356H75.862z M41.608,202.445h56.735v41.546H52.412L41.608,202.445z M239.086,243.991h-45.933v-41.546h56.737 L239.086,243.991z M266.935,136.899h-73.782V95.356h21.438c0.003,0,0.005,0,0.008,0c0.002,0,0.004,0,0.007,0h63.132L266.935,136.899 z"></path> </g></svg>
             </span>
               <span>Leagues</span>

           </p>-->
        <router-link :to="{name: 'points'}" class="flex flex-col justify-center items-center w-1/4">
              <span>
             <svg :class="{ 'fill-white': $route.name === 'points' }" width="50px" height="64px" viewBox="0 0 24 24"
                  fill="none" xmlns="http://www.w3.org/2000/svg"><g
                     id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier"
                                                                    stroke-linecap="round"
                                                                    stroke-linejoin="round"></g><g
                     id="SVGRepo_iconCarrier"> <path
                     d="M14.65 8.93274L12.4852 4.30901C12.2923 3.89699 11.7077 3.897 11.5148 4.30902L9.35002 8.93274L4.45559 9.68243C4.02435 9.74848 3.84827 10.2758 4.15292 10.5888L7.71225 14.2461L6.87774 19.3749C6.80571 19.8176 7.27445 20.1487 7.66601 19.9317L12 17.5299L16.334 19.9317C16.7256 20.1487 17.1943 19.8176 17.1223 19.3749L16.2878 14.2461L19.8471 10.5888C20.1517 10.2758 19.9756 9.74848 19.5444 9.68243L14.65 8.93274Z"
                     stroke="#ffffff" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
              </span>
            <span>Points</span>

        </router-link>
        <router-link :to="{name: 'squad'}" class="flex flex-col justify-center items-center w-1/4">
      <span>
         <svg :class="{ 'fill-white': $route.name === 'squad' }" width="50px" height="64px" viewBox="0 0 24 24"
              fill="none" xmlns="http://www.w3.org/2000/svg"><g
                 id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round"
                                                                stroke-linejoin="round"></g><g
                 id="SVGRepo_iconCarrier"> <path
                 d="M4 9.47256V6.26286C4 5.92383 4.21369 5.62162 4.53332 5.50861L7.73332 4.3772C8.25389 4.19314 8.80587 4.5903 8.9971 5.10828C9.44791 6.32939 10.6223 7.20005 12 7.20005C13.3777 7.20005 14.5521 6.3294 15.0029 5.10828C15.1941 4.5903 15.7461 4.19314 16.2667 4.3772L19.4667 5.50861C19.7863 5.62163 20 5.92383 20 6.26286V9.47256C20 9.99301 19.5109 10.3749 19.006 10.2487L17.794 9.94569C17.2891 9.81946 16.8 10.2013 16.8 10.7218V19.2972C16.8 19.739 16.4418 20.0972 16 20.0972H8C7.55817 20.0972 7.2 19.739 7.2 19.2972V10.7218C7.2 10.2013 6.71089 9.81946 6.20597 9.94569L4.99403 10.2487C4.48911 10.3749 4 9.99302 4 9.47256Z"
                 stroke="#ffffff" stroke-width="0.8"></path> </g></svg>
      </span>
            <span>Squad</span>

        </router-link>
        <router-link :to="{name:'market'}" class="  flex flex-col justify-center items-center  w-1/4">
<span>
  <svg :class="{ 'fill-white': $route.name === 'market' }" width="50px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g
          id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round"
                                                         stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g
          id="Interface / Suitcase"> <path id="Vector"
                                           d="M8 8H6.2002C5.08009 8 4.51962 8 4.0918 8.21799C3.71547 8.40973 3.40973 8.71547 3.21799 9.0918C3 9.51962 3 10.0801 3 11.2002V16.8002C3 17.9203 3 18.4801 3.21799 18.9079C3.40973 19.2842 3.71547 19.5905 4.0918 19.7822C4.5192 20 5.07899 20 6.19691 20H17.8031C18.921 20 19.48 20 19.9074 19.7822C20.2837 19.5905 20.5905 19.2842 20.7822 18.9079C21 18.4805 21 17.9215 21 16.8036V11.1969C21 10.079 21 9.5192 20.7822 9.0918C20.5905 8.71547 20.2837 8.40973 19.9074 8.21799C19.4796 8 18.9203 8 17.8002 8H16M8 8H16M8 8C8 5.79086 9.79086 4 12 4C14.2091 4 16 5.79086 16 8"
                                           stroke="white" stroke-width="1" stroke-linecap="round"
                                           stroke-linejoin="round"></path> </g> </g></svg>
</span>
            <span>Market</span>

        </router-link>
        <router-link :to="{name: 'profile'}" class="flex flex-col justify-center items-center w-1/4">
        <span>
<svg :class="{ 'fill-white': $route.name === 'profile' }"

     width="50px" height="64px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g
        id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round"
                                                       stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path
        d="M16 8C16 10.2091 14.2091 12 12 12C9.79086 12 8 10.2091 8 8C8 5.79086 9.79086 4 12 4C14.2091 4 16 5.79086 16 8Z"
        stroke="#ffffff" stroke-linecap="round" stroke-linejoin="round"></path> <path
        d="M14.6824 14H9.31765C8.83513 14 8.59387 14 8.37806 14.0461C7.63116 14.2056 6.9853 14.7661 6.62346 15.569C6.51891 15.8009 6.44262 16.0765 6.29003 16.6278C6.10668 17.2901 6.01501 17.6213 6.00261 17.8884C5.95888 18.8308 6.46818 19.6817 7.22441 19.9297C7.43875 20 7.72864 20 8.30844 20H15.6916C16.2714 20 16.5613 20 16.7756 19.9297C17.5318 19.6817 18.0411 18.8308 17.9974 17.8884C17.985 17.6213 17.8933 17.2901 17.71 16.6278C17.5574 16.0765 17.4811 15.8009 17.3765 15.569C17.0147 14.7661 16.3688 14.2056 15.6219 14.0461C15.4061 14 15.1649 14 14.6824 14Z"
        stroke="#ffffff" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
        </span>
            <span>Profile</span>

        </router-link>
    </nav>
</template>

<script>
export default {
    name: "TheBottomMenu"
}
</script>

<style scoped>

</style>