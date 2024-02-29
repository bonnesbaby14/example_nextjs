import { NextResponse, NextRequest } from "next/server"
import { PrismaClient , Prisma} from "@prisma/client";
import getUser, { JwtPayload } from "@/utils/authFunctions";
import { use } from "react";
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


const account = await prisma.cuenta.findFirst({
    where: { idcuenta: parseInt(user.idcuenta.toString()) }
  });

const maxLevelAccount=parseInt((account?.numero_niveles.toString()??"0"));
console.log(maxLevelAccount)

var  levels: Level[]=[];




  const person = await prisma.persona.findFirst({
    where: {
      idpersona: user.idpersona,
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



  const key   =`nivel_${i}` as keyof typeof account
  // const a  = "nivel_3";
  let name=account?.[key] ?? "N/A";

 
  const level: Level = { level: i, name: name,color:colors[i-1]};


  switch(i){


    case 1:
 
    try {


      if (user.nivel === 0) {
        
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: { not: null },
            idnivel2: null,
            idnivel3:null,
            idnivel4: null,
            idnivel5:null,
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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


        if (user.nivel === 0) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: {not:null},
            idnivel2: {not:null},
            idnivel3: null,
            idnivel4: null,
            idnivel5: null,
            idnivel6: null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });
      } else if (user.nivel === 1) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: {not:null},
            idnivel3:null,
            idnivel4: null,
            idnivel5:null,
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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


        if (user.nivel === 0) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: {not:null},
            idnivel2: {not:null},
            idnivel3: {not:null},
            idnivel4: null,
            idnivel5: null,
            idnivel6: null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });
      } else if (user.nivel === 1) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: {not:null},
            idnivel3:{not:null},
            idnivel4: null,
            idnivel5:null,
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 2) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:{not:null},
            idnivel4: null,
            idnivel5:null,
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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


        if (user.nivel === 0) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: {not:null},
            idnivel2: {not:null},
            idnivel3: {not:null},
            idnivel4: {not:null},
            idnivel5: null,
            idnivel6: null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });
      } else if (user.nivel === 1) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: {not:null},
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:null,
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 2) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:null,
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 3) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: {not:null},
            idnivel5:null,
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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


        if (user.nivel === 0) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: {not:null},
            idnivel2: {not:null},
            idnivel3: {not:null},
            idnivel4: {not:null},
            idnivel5: {not:null},
            idnivel6: null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });
      } else if (user.nivel === 1) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: {not:null},
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 2) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 3) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 4) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:{not:null},
            idnivel6:null,
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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


        if (user.nivel === 0) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: {not:null},
            idnivel2: {not:null},
            idnivel3: {not:null},
            idnivel4: {not:null},
            idnivel5: {not:null},
            idnivel6: {not:null},
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });
      } else if (user.nivel === 1) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: {not:null},
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 2) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 3) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 4) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 5) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:person.idnivel5,
            idnivel6:{not:null},
            idnivel7: null,
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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


        if (user.nivel === 0) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: {not:null},
            idnivel2: {not:null},
            idnivel3: {not:null},
            idnivel4: {not:null},
            idnivel5: {not:null},
            idnivel6: {not:null},
            idnivel7: {not:null},
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });
      } else if (user.nivel === 1) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: {not:null},
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 2) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 3) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 4) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 5) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:person.idnivel5,
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 6) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:person.idnivel5,
            idnivel6:person.idnivel6,
            idnivel7: {not:null},
            idnivel8: null,
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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


        if (user.nivel === 0) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: {not:null},
            idnivel2: {not:null},
            idnivel3: {not:null},
            idnivel4: {not:null},
            idnivel5: {not:null},
            idnivel6: {not:null},
            idnivel7: {not:null},
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });
      } else if (user.nivel === 1) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: {not:null},
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 2) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:{not:null},
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 3) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: {not:null},
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 4) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:{not:null},
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 5) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:person.idnivel5,
            idnivel6:{not:null},
            idnivel7: {not:null},
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 6) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:person.idnivel5,
            idnivel6:person.idnivel6,
            idnivel7: {not:null},
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
            }
          },
        });


      }else if (user.nivel === 7) {
        level.persons = await prisma.persona.count({
          where: {
            idcuenta: user.idcuenta,
            activo: 1,
            idnivel1: person.idnivel1,
            idnivel2: person.idnivel2,
            idnivel3:person.idnivel3,
            idnivel4: person.idnivel4,
            idnivel5:person.idnivel5,
            idnivel6:person.idnivel6,
            idnivel7: person.idnivel7,
            idnivel8: {not:null},
            idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
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

const data_persons = await prisma.persona.findMany({
  select: {
    idpersona: true,
    created_at: true,
    // Otras propiedades si es necesario
  },
  where: {
    created_at: { gte: date },
    idcuenta: user.idcuenta,
    activo: 1,
    idpersona_lider: {
              ...((account?.vista_lideres ?? 0 )  > 0 ||  (user.visualizador > 0 && user.nivel> 0)) && {
                contains: "," + user.idpersona + ",",
              },
     },
    AND: [
      user.nivel > 0 ? { idnivel1: person.idnivel1 } : {},
      user.nivel > 1 ? { idnivel2: person.idnivel2 } : {},
      user.nivel > 2 ? { idnivel3: person.idnivel3 } : {},
      user.nivel > 3 ? { idnivel4: person.idnivel4 } : {},
      user.nivel > 4 ? { idnivel5: person.idnivel5 } : {},
      user.nivel > 5 ? { idnivel6: person.idnivel6 } : {},
      user.nivel > 6 ? { idnivel7: person.idnivel7 } : {},
      user.nivel > 7 ? { idnivel8: person.idnivel8 } : {},
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