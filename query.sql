SELECT
    idcuenta,
    nombre,
    nivel_1,
    nivel_2,
    nivel_3,
    nivel_4,
    nivel_5,
    nivel_6,
    nivel_7,
    nivel_8,
    catalogo_1,
    catalogo_2,
    catalogo_3,
    foto_1,
    foto_2,
    foto_3,
    foto_4,
    foto_5,
    foto_6,
    foto_7,
    foto_8,
    foto_9,
    foto_10,
    mensaje,
    numero_niveles,
    created_by,
    created_at,
    updated_by,
    updated_at,
    habilitado,
    fecha_limite_bloqueo,
    activo,
    habilitar_carga,
    gratuita,
    lite,
    idestado,
    idmunicipio,
    permiso_nivel1,
    permiso_nivel2,
    permiso_nivel3,
    permiso_nivel4,
    permiso_nivel5,
    permiso_nivel6,
    permiso_nivel7,
    permiso_nivel8,
    vista_lideres,
    registro_inferior_inmediato,
    parametrizables_nivel1,
    parametrizables_nivel2,
    parametrizables_nivel3,
    parametrizables_nivel4,
    parametrizables_nivel5,
    parametrizables_nivel6,
    parametrizables_nivel7,
    parametrizables_nivel8,
    primary_color,
    icon_color,
    account_name
FROM
    `cuenta`
WHERE
    1;

select
    id,
    name,
    email,
    password,
    nivel,
    super,
    primer_acceso,
    habilitado,
    activo,
    created_at,
    updated_at,
    logged_at,
    gratuita,
    idpersona_lider,
    visualizador,
    idcuenta,
    idpersona
from
    users
insert into
    next_datapp_v2.GroupsLevel5 (
        select
            idgrupo_nivel5,
            idcuenta,
            idnivel1,
            idnivel2,
            idnivel3,
            idnivel4,
            nombre,
            IFNULL(
                mensaje,
                "Hola {nombre_receptor} mi nombre es {nombre_emisor}"
            ),
            activo,
            IFNULL(created_at, "2020-07-28 16:45:00.000"),
            IFNULL(updated_at, "2020-07-28 16:45:00.000"),
            IFNULL(created_by, 0),
            meta
        from
            wwsoft_datapp_registroplus.grupo_nivel5
    );

insert into
    next_datapp_v2.GroupsLevel6 (
        select
            idgrupo_nivel6,
            idcuenta,
            idnivel1,
            idnivel2,
            idnivel3,
            idnivel4,
            idnivel5,
            nombre,
            IFNULL(
                mensaje,
                "Hola {nombre_receptor} mi nombre es {nombre_emisor}"
            ),
            activo,
            IFNULL(created_at, "2020-07-28 16:45:00.000"),
            IFNULL(updated_at, "2020-07-28 16:45:00.000"),
            IFNULL(created_by, 0),
            meta
        from
            wwsoft_datapp_registroplus.grupo_nivel6
    );

IFNULL()
insert into
    next_datapp_v2.GroupsLevel7 (
        select
            idgrupo_nivel7,
            idcuenta,
            idnivel1,
            idnivel2,
            idnivel3,
            idnivel4,
            idnivel5,
            idnivel6,
            nombre,
            IFNULL(
                mensaje,
                "Hola {nombre_receptor} mi nombre es {nombre_emisor}"
            ),
            activo,
            IFNULL(created_at, "2020-07-28 16:45:00.000"),
            IFNULL(updated_at, "2020-07-28 16:45:00.000"),
            IFNULL(created_by, 0),
            meta
        from
            wwsoft_datapp_registroplus.grupo_nivel7
    );




insert into
    next_datapp_v2.Persons(
        SELECT
            idpersona,
            
                       IFNULL(idcuenta, 0),
              IFNULL(apellido_paterno, "N/F"),
              IFNULL(apellido_materno, "N/F"),
            
              IFNULL(nombre, "N/F"),
            
            IFNULL(domicilio, "N/F"),
            IFNULL(exterior, "N/F"),
            IFNULL(interior, "N/F"),
            IFNULL(manzana_electoral, "N/F"),
            IFNULL(colonia, "N/F"),
            IFNULL(municipio_estado, "N/F"),
            IFNULL(edad, 0),
            IFNULL(fecha_nacimiento, "N/F"),
            IFNULL(sexo, "N/F"),
            IFNULL(localidad, "N/F"),
            IFNULL(emision, "N/F"),
            IFNULL(vigencia, "N/F"),
            IFNULL(curp, "N/F"),
            IFNULL(clave_elector, "N/F"),
            IFNULL(seccion, "N/F"),
            IFNULL(estado, "N/F"),
            IFNULL(municipio, "N/F"),
                        IFNULL(email, "N/F"),
            
            IFNULL(numero, "N/F"),
            IFNULL(facebook, "N/F"),
            IFNULL(twitter, "N/F"),
            IFNULL(numero_local, "N/F"),
            IFNULL(nota_1, "N/F"),
            IFNULL(nota_2, "N/F"),
            IFNULL(escolaridad, "N/F"),
            IFNULL(ocupacion, "N/F"),
            foto_1,
            foto_2,
            foto_3,
            foto_4,
            foto_5,
            foto_6,
            foto_7,
            foto_8,
            foto_9,
            foto_10,
            IFNULL(latitud, "N/F"),
            IFNULL(longitud, "N/F"),
            idnivel1,
            idnivel2,
            idnivel3,
            idnivel4,
            idnivel5,
            idnivel6,
            idnivel7,
            idnivel8,
            IFNULL(created_by, 0),
               IFNULL(created_at, "2020-07-28 16:45:00.000"),
            IFNULL(updated_by, 0),
         
            IFNULL(updated_at, "2020-07-28 16:45:00.000"),
            registro_en_movil,
            activo,
            IFNULL(parametro1, "N/F"),
            IFNULL(parametro2, "N/F"),
            IFNULL(parametro3, "N/F"),
            credencial,
            IFNULL(idpersona_lider, ""),
            IFNULL(idvalidacion, 0),
            whatsapp,
            seccion_python
        from
            wwsoft_datapp_registroplus.persona
    );


    update Persons set updated_at="2020-07-28 16:45:00.000" where updated_at = "0000-00-00 00:00:00";