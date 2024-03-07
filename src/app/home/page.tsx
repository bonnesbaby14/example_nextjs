
import React, {  Suspense } from 'react';

import ChartDashboard from "../components/ChartDashboard";
import GridCounterDashboard from "../components/GridCounterDashboard"


const Home = async ()  => {
  return (
    <div>



      {/* <div className="p-4 sm:ml-64">
        <div className="p-4 border-2 border-gray-200 border-dashed rounded-lg dark:border-gray-700">
        
           <GridCounterDashboard/>
        
        </div>
      </div> */}

      <div className="p-4 sm:ml-64">
        <div className="p-4 border-2 border-gray-200 border-dashed rounded-lg dark:border-gray-700">

        
            <ChartDashboard />
        
        </div>
      </div>

    </div>
  );
};

export default Home;
