
import React, { FC, useEffect } from 'react';


const GridCounterDashboard: FC = async () => {



    const fetchData = async () => {

        console.log("entre al fecth")
        try {
            const response = await fetch('/api/home?type=count', {
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

            const counters = fetchedCounters.counters;
            //   setCounterData({counters:counters})




            return counters

        } catch (error) {
            console.error('Error fetching data:', error);
            return []
        }
    };

    //   useEffect(()  => {

    //      // Llamar a la función de obtención de datos

    //   }, []);
    const counters = await fetchData();


    console.log("ya voy a dibujar")

    return (
        <div className="grid grid-cols-4 gap-x-6 gap-y-6 flex-wrap ">
            {counters.map((counter:any) => (
                <div className="flex items-center space-x-20 pl-6 h-28 rounded bg-gray-50 dark:bg-gray-800" key={counter.level}>

                    <div className="flex flex-col items-center">
                        <svg className={`w-16 h-16 ${counter.color} dark:${counter.color}`} aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18Zm0 0a9 9 0 0 0 5-1.5 4 4 0 0 0-4-3.5h-2a4 4 0 0 0-4 3.5 9 9 0 0 0 5 1.5Zm3-11a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                        </svg>
                        <h4 className="text-xs text-center">{counter.name}</h4>
                    </div>

                    <h1 className="text-3xl">{counter.persons}</h1>
                </div>
            ))}
        </div>
    )




}


export default GridCounterDashboard