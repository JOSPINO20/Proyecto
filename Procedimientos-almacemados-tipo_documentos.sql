# AQUI ESTOY HACIENDO USO DELA BASE DE DATOS
USE BD_COLEGIOPRIMARIA;

# HACEMOS UN SELECT PARA VER SI HAY REGISTROS EN A TABLA TIPO_AMBIENTES

SELECT * FROM TIPO_DOCUMENTO;


# PROCEDIMIENTO REGISTRAS

DELIMITER $$
CREATE PROCEDURE PROC_INSERTAR_TIPOSDOCUMENTOS
(
	IN _DESCRIPCION VARCHAR(40)
)
BEGIN
	INSERT INTO TIPO_DOCUMENTO (DESCRIPCION) VALUES (_DESCRIPCION);
END
$$


CALL PROC_INSERTAR_TIPOSDOCUMENTOS('CARTA');


# PROCEDIMIENTO BUSCAR

DELIMITER $$
CREATE PROCEDURE PROC_BUSCAR_TIPOSDOCUMENTOS
(
	IN _DESCRIPCION VARCHAR(80)
)
BEGIN 
	SELECT COD_DOCUMENTO, DESCRIPCION FROM TIPO_DOCUMENTO 
    WHERE  DESCRIPCION = _DESCRIPCION;
END
$$


CALL PROC_BUSCAR_TIPOSDOCUMENTOSCod_DocumentoCod_Documento('CARTA');

# PROCEDIMIENTO LISTAR

DELIMITER $$
CREATE PROCEDURE PROC_LISTAR_TIPOSDOCUMENTOS
(
)
begin 
	SELECT COD_DOCUMENTO, DESCRIPCION  from TIPO_DOCUMENTO;
end
$$

CALL PROC_LISTAR_TIPOSDOCUMENTOS();


#prodecimiento modificar

DELIMITER $$
CREATE PROCEDURE PROC_MODIFICAR_TIPOSDOCUMENTO
(
    IN _COD_DOCUMENTO		INT(1),
	IN _DESCRIPCION		VARCHAR(20)
)
begin 
	update TIPO_DOCUMENTO set  Descripcion = _DESCRIPCION
    where Cod_documento= _COD_DOCUMENTO;
end
$$

CALL PROC_MODIFICAR_TIPOSDOCUMENTO(3,'SERRANO');


# PROCESO ELIMINAR


DROP PROCEDURE PROC_ELIMINAR_TIPOSDOCUMENTO
#D




CALL PROC_ELIMINAR_TIPOSDOCUMENTO("DNI");
