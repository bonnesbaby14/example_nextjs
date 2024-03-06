import { NextResponse, NextRequest } from "next/server"
import { PrismaClient , Prisma} from "@prisma/client";
import getUser, { JwtPayload } from "@/utils/authFunctions";
import { use } from "react";


import { STATUS } from "@/utils/constants";

const prisma=new PrismaClient();


export interface Level {
  
  level: number;
  persons?:number,
  name:string,
  color:string

}

export interface GraphicItem{
  name:string,
  data:number
}

export async function GET(req: NextRequest) {
  
  

  console.log("aqui andamos back 2")

const  user : JwtPayload = await getUser() as JwtPayload;


const account = await prisma.accounts.findFirst({
    where: { account_id: parseInt(user.account_fk.toString()) }
  });

const maxLevelAccount=parseInt((account?.number_levels.toString()??"0"));
console.log(maxLevelAccount)

var  levels: Level[]=[];




  const person = await prisma.persons.findFirst({
    where: {
      person_id: user.person_fk,
    },
  });



  if (!person) {
    throw new Error('Persona no encontrada');
  }

  // Continúa con el resto del código según tus necesidades
  const colors = [
      'text-lime-700',
      'text-fuchsia-500',
      'text-red-400',
      'text-orange-500',
      'text-slate-50',
      'text-blue-400',
      'text-rose-400',
      'text-teal-400',

      // Agrega más colores según sea necesario
    ];



for (let i = 1; i <= maxLevelAccount; i++) {



  const key   =`level_${i}` as keyof typeof account
  // const a  = "level_3";
  let name=account?.[key] ?? "N/A";

 
  const level: Level = { level: i, name: name,color:colors[i-1]};


  switch(i){


    case 1:
 
    try {


      if (user.level === 0) {
        
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
            active: STATUS.ACTIVE,
            level1_fk: { not: null },
            level2_fk: null,
            level3_fk:null,
            level4_fk: null,
            level5_fk:null,
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });

        
      } 


      
    } catch (error) {
      console.error('Error:', error);
    }
  

    break;

    case 2:
       
    try {


        if (user.level === 0) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
            active: STATUS.ACTIVE,
          
            level1_fk: {not:null},
            level2_fk: {not:null},
            level3_fk: null,
            level4_fk: null,
            level5_fk: null,
            level6_fk: null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });
      } else if (user.level === 1) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: {not:null},
            level3_fk:null,
            level4_fk: null,
            level5_fk:null,
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }


    } catch (error) {
      console.error('Error:', error);
    }
  

    break;

    case 3:
       
    try {


        if (user.level === 0) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: {not:null},
            level2_fk: {not:null},
            level3_fk: {not:null},
            level4_fk: null,
            level5_fk: null,
            level6_fk: null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });
      } else if (user.level === 1) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: {not:null},
            level3_fk:{not:null},
            level4_fk: null,
            level5_fk:null,
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 2) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:{not:null},
            level4_fk: null,
            level5_fk:null,
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }


    } catch (error) {
      console.error('Error:', error);
    }
  

    break;


    case 4:
       
    try {


        if (user.level === 0) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: {not:null},
            level2_fk: {not:null},
            level3_fk: {not:null},
            level4_fk: {not:null},
            level5_fk: null,
            level6_fk: null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });
      } else if (user.level === 1) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: {not:null},
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:null,
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 2) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:null,
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 3) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: {not:null},
            level5_fk:null,
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }


    } catch (error) {
      console.error('Error:', error);
    }
  

    break;


    case 5:
       
    try {


        if (user.level === 0) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: {not:null},
            level2_fk: {not:null},
            level3_fk: {not:null},
            level4_fk: {not:null},
            level5_fk: {not:null},
            level6_fk: null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });
      } else if (user.level === 1) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: {not:null},
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 2) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 3) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 4) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:{not:null},
            level6_fk:null,
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }


    } catch (error) {
      console.error('Error:', error);
    }
  

    break;

    case 6:
       
    try {


        if (user.level === 0) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: {not:null},
            level2_fk: {not:null},
            level3_fk: {not:null},
            level4_fk: {not:null},
            level5_fk: {not:null},
            level6_fk: {not:null},
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });
      } else if (user.level === 1) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: {not:null},
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 2) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 3) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
            active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 4) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 5) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:person.level5_fk,
            level6_fk:{not:null},
            level7_fk: null,
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }


    } catch (error) {
      console.error('Error:', error);
    }
  

    break;


    case 7:
       
    try {


        if (user.level === 0) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: {not:null},
            level2_fk: {not:null},
            level3_fk: {not:null},
            level4_fk: {not:null},
            level5_fk: {not:null},
            level6_fk: {not:null},
            level7_fk: {not:null},
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });
      } else if (user.level === 1) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: {not:null},
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 2) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 3) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 4) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 5) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:person.level5_fk,
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 6) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:person.level5_fk,
            level6_fk:person.level6_fk,
            level7_fk: {not:null},
            level8_fk: null,
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }


    } catch (error) {
      console.error('Error:', error);
    }
  

    break;

    case 8:
       
    try {


        if (user.level === 0) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: {not:null},
            level2_fk: {not:null},
            level3_fk: {not:null},
            level4_fk: {not:null},
            level5_fk: {not:null},
            level6_fk: {not:null},
            level7_fk: {not:null},
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });
      } else if (user.level === 1) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: {not:null},
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 2) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:{not:null},
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 3) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: {not:null},
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 4) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:{not:null},
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 5) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:person.level5_fk,
            level6_fk:{not:null},
            level7_fk: {not:null},
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 6) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:person.level5_fk,
            level6_fk:person.level6_fk,
            level7_fk: {not:null},
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }else if (user.level === 7) {
        level.persons = await prisma.persons.count({
          where: {
            account_fk: user.account_fk,
                    active: STATUS.ACTIVE,
            level1_fk: person.level1_fk,
            level2_fk: person.level2_fk,
            level3_fk:person.level3_fk,
            level4_fk: person.level4_fk,
            level5_fk:person.level5_fk,
            level6_fk:person.level6_fk,
            level7_fk: person.level7_fk,
            level8_fk: {not:null},
            leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
            }
          },
        });


      }


    } catch (error) {
      console.error('Error:', error);
    }
  

    break;



  }
  levels.push(level);
}



const date = new Date();
date.setMonth(date.getMonth() - 5);

const data_persons = await prisma.persons.findMany({
  select: {
    person_id: true,
    created_at: true,
    // Otras propiedades si es necesario
  },
  where: {
    created_at: { gte: date },
    account_fk: user.account_fk,
            active: STATUS.ACTIVE,
    leader_person_id: {
              ...((account?.leader_view ?? 0 )  > 0 ||  (user.visualizer > 0 && user.level> 0)) && {
                contains: "," + user.person_fk + ",",
              },
     },
    AND: [
      user.level > 0 ? { level1_fk: person.level1_fk } : {},
      user.level > 1 ? { level2_fk: person.level2_fk } : {},
      user.level > 2 ? { level3_fk: person.level3_fk } : {},
      user.level > 3 ? { level4_fk: person.level4_fk } : {},
      user.level > 4 ? { level5_fk: person.level5_fk } : {},
      user.level > 5 ? { level6_fk: person.level6_fk } : {},
      user.level > 6 ? { level7_fk: person.level7_fk } : {},
      user.level > 7 ? { level8_fk: person.level8_fk } : {},
    ],
  },
});

// Procesar los resultados en tu código
const data_graphic: Record<string, number> = {};

data_persons.forEach((person:any) => {
const date_without_time = person.created_at?.toISOString().split('T')[0];

if (date_without_time) {
data_graphic[date_without_time] = (data_graphic[date_without_time] || 0) + 1;
}
});





console.log("se me hizo una petcion")


    return NextResponse.json({
      data:{
        graphic:data_graphic,
        counters:levels
    
      } ,
      
    
    }, {
      status: 200,
      headers: {
        'Content-Type': 'application/json'
      }
    });
    
}