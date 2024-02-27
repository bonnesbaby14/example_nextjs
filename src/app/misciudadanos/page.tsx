

"use client"
import { getHome } from "@/utils/homeFunctions";
import { cookies } from "next/headers";
import React, { useState, useEffect, Suspense } from 'react';
import { AreaData, ColorType, DeepPartial, Time, TimeChartOptions, createChart } from 'lightweight-charts';
import { Level } from "../api/home/route";


type HomeData = {
  counters: Level[];
  graphic: any[]
  // Otros campos específicos de HomeData si los tienes
};

const Home = () => {

  const [homeData, setHomeData] = useState<HomeData>({ counters: [], graphic: [] });


  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('/api/home', {
          method: 'GET',
          headers: { 'Content-Type': 'application/json' },
        });

        if (!response.ok) {
          // Manejar errores de la petición
          console.error(`Error: ${response.status}`);
          return;
        }

        const data = await response.json();
        const fetchedCounters = data.data;
        const graphicData = fetchedCounters.graphic;



        setHomeData(fetchedCounters);




      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();  // Llamar a la función de obtención de datos

  }, []);
  // const data = await getHome()



  const counters = homeData.counters;








  return (
    <div>






      <div className="p-4 sm:ml-64">
        <div className="p-4 border-2 border-gray-200 border-dashed rounded-lg dark:border-gray-700">




          <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
              <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                  <th scope="col" className="px-6 py-3 text-center">
                    Nombre
                  </th>
                  <th scope="col" className="px-6 py-3 text-center">
                    Clave de elector
                  </th>
                  <th scope="col" className="px-6 py-3 text-center">
                    CURP
                  </th>

                  <th scope="col" className="px-6 py-3 text-center">
                    Opciones
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                  <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white  text-center">
                    Apple MacBook Pro 17"
                  </th>
                  <td className="px-6 py-4  text-center">
                    Silver
                  </td>
                  <td className="px-6 py-4  text-center">
                    Laptop
                  </td>

                  <td className="px-6 py-4 text-center">
                    <button type="button" className="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br  focus:outline-none  font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Ver</button>
                    <button type="button" className="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Editar</button>
                    <button type="button" className="text-white bg-gradient-to-r from-red-400 via-red-500 to-red-600 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Eliminar</button>

                  </td>
                </tr>
                <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                  <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white  text-center">
                    Microsoft Surface Pro
                  </th>
                  <td className="px-6 py-4  text-center">
                    White
                  </td>
                  <td className="px-6 py-4  text-center">
                    Laptop PC
                  </td>

                  <td className="px-6 py-4 text-center">
                    <button type="button" className="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br  focus:outline-none  font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Ver</button>
                    <button type="button" className="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Editar</button>
                    <button type="button" className="text-white bg-gradient-to-r from-red-400 via-red-500 to-red-600 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Eliminar</button>


                  </td>
                </tr>
                <tr className="bg-white dark:bg-gray-800 hover:bg-gray-50 dark:hover:bg-gray-600">
                  <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white  text-center">
                    Magic Mouse 2
                  </th>
                  <td className="px-6 py-4  text-center">
                    Black
                  </td>
                  <td className="px-6 py-4  text-center">
                    Accessories
                  </td>

                  <td className="px-6 py-4 text-center">
                    <button type="button" className="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br  focus:outline-none  font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Ver</button>
                    <button type="button" className="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Editar</button>
                    <button type="button" className="text-white bg-gradient-to-r from-red-400 via-red-500 to-red-600 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Eliminar</button>

                  </td>
                </tr>
              </tbody>
            </table>
          </div>



        </div>
        <nav aria-label="Page navigation example ">
          <ul className="inline-flex -space-x-px text-sm m-5">
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 ms-0 leading-tight text-gray-500 bg-white border border-e-0 border-gray-300 rounded-s-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Previous</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">1</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">2</a>
            </li>
            <li>
              <a href="#" aria-current="page" className="flex items-center justify-center px-3 h-8 text-blue-600 border border-gray-300 bg-blue-50 hover:bg-blue-100 hover:text-blue-700 dark:border-gray-700 dark:bg-gray-700 dark:text-white">3</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">4</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">5</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 rounded-e-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Next</a>
            </li>
          </ul>
        </nav>
      </div>

    </div>
  );
};

export default Home;
