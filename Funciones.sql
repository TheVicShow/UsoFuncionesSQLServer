/*---------------------------------------------------------*/
/*-----------|||||HECHO POR VICTOR DOMINGUEZ|||||----------*/
/*---------------------------------------------------------*/

/*-///////////////////////////////////////////////////////-*/
/*-////|||Funciones Internas|||////-*/
/*-///////////////////////////////////////////////////////-*/

SELECT APP_NAME()--Obtener el nombre de la sesion actual
SELECT @@PROCID--Regresa la el identificador del objeto actual
APPLOCK_MODE--Devuelve el modo de bloqueo mantenido por el propietario del bloqueo en un recurso de aplicación
APPLOCK_TEST--Devuelve información sobre si es o no un bloqueo puede concederse a un recurso de aplicación particular para un propietario del bloqueo especificada sin adquirir la cerradura
SELECT ASSEMBLYPROPERTY ( 'Hola Mundo', 'CultureInfo')--Regresa informacion acerca de las propiedades del ensamble
SELECT COL_LENGTH('tabla','columna')--Regresa el tamaño (en Bytes) de una columna
SELECT COL_NAME('id de la tabla','id de la columna')--Regresa el nombre de la columna 
SELECT COLUMNPROPERTY('id de la tabla','columna','propiedad-//-revisar página para las propiedades validas-//-')--Regresa informacion sobre una columna o parametro--https://msdn.microsoft.com/en-us/library/ms174968.aspx
SELECT DATABASE_PRINCIPAL_ID()--Regresa el id de la base de datos actual
SELECT DATABASEPROPERTYEX('base de datos','propiedad-//-revisar pagina para las propiedades validas-//-')--Regresa la configuracion actual de la base de datos--https://msdn.microsoft.com/en-us/library/ms186823.aspx
SELECT DB_ID(N'base de datos')--Regresa el identificador de la base da datos seleccionada
SELECT DB_NAME('id')--Regresa el nombre de la base de datos segun su id
----NEXT VALUE FOR----
CREATE SEQUENCE CountBy
    START WITH 1
    INCREMENT BY 1;

SELECT NEXT VALUE FOR CountBy OVER (ORDER BY tecnico) AS ListNumber
FROM PorcentajeSistemas
-----------------------Genera una secuencia de numeros segun la columna especificada
SELECT OBJECT_DEFINITION ('id del objeto')--Devuelve el texto original de Transact-SQL de la definición de un objeto especificado.
SELECT OBJECT_ID('Tabla, Procedimiento, Trigger... etc')--Regresa el id del objeto especificado
SELECT OBJECT_NAME('id del objeto')--Regresa el nombre del objeto segun el id del objeto especificado
SELECT OBJECT_SCHEMA_NAME('id del objeto')--Regresa el Schema del objeto especificado
SELECT OBJECTPROPERTY('id del objeto','propiedad-//-revisar pagina para las propiedades validas-//-')--Regresa informacion de los objetos (en pocas palabras a partir del id y de la propiedad te devuelve si es o no de esa propiedad)--https://msdn.microsoft.com/en-us/library/ms188390.aspx
SELECT OBJECTPROPERTYEX('id del objeto','propiedad-//-revisar pagina para las propiedades validas-//-')--Regresa informacion de los objetos (en pocas palabras a partir del id y de la propiedad te devuelve si es o no de esa propiedad)--https://msdn.microsoft.com/en-us/library/ms188390.aspx
SELECT ORIGINAL_DB_NAME()--Regresa el nombre de la base de datos que el usuario especifico en el Connection String
SELECT PARSENAME('id del objeto','pieza del objeto')--Regresa la parte especificada de un nombre de objeto
/* piezas del objeto
1 = Object name
2 = Schema name
3 = Database name
4 = Server name
*/
SELECT SCHEMA_ID('nombre del esquema')--Devuelve el ID de esquema asociado con un nombre de esquema.
SELECT SCHEMA_NAME('id del esquema')--Devuelve el nombre del esquema asociado con un id 
SELECT SCOPE_IDENTITY()--Devuelve el último valor de identidad insertado en una columna de identidad en el mismo ámbito, Un ámbito es un módulo: un procedimiento almacenado, desencadenador, función o por lotes. Por lo tanto, dos estados están en el mismo alcance si están en el mismo procedimiento, función, almacenado o lote.
SELECT SERVERPROPERTY('propiedad-//-revisar pagina para las propiedades validas-//-')--Devuelve información acerca de la propiedad de la instancia del servidor.--https://msdn.microsoft.com/en-us/library/ms174396.aspx
SELECT @@VERSION--Devuelve la versión de SQL
SELECT @@IDENTITY--Devuelve el id del ultimo registro insertado

/*-//////////////////////////////////////////////////////////-*/
/*-////|||Funciones Matematicas|||////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT ABS('Expresion numerica')--Se obtiene el numero positivo de una expresion numerica
SELECT ACOS('Expresion Flotante o Decimal')--Se obtiene el arcocoseno de una cantidad
SELECT ASIN('Expresion Flotante o Decimal')--Se obtiene el arcoseno de una cantidad
SELECT ATAN('Expresion Flotante o Decimal')--Se obtiene el arcotangente de una cantidad
SELECT ATN2('Expresion Flotante o Decimal','Expresion Flotante o Decimal')--Devuelve el ángulo, en radianes, entre el eje x positivo y el rayo desde el origen hasta el punto (y, x), donde x e y son los valores de las dos expresiones de coma flotante especificados.
SELECT CEILING('Expresion numerica')--Devuelve el menor entero mayor que, o igual a, la expresión numérica especificada.
SELECT COS('Expresion Flotante o Decimal')--Se obtiene el coseno de una cantidad
SELECT COT('Expresion Flotante o Decimal')--Se obtiene el cotangente de una cantidad
SELECT DEGREES('Expresion numerica')--Devuelve el ángulo correspondiente en grados de un ángulo especificado en radianes.
SELECT EXP('Expresion numerica')--Devuelve el valor exponencial de una cantidad
SELECT FLOOR('Expresion numerica')--Devuelve el mayor entero menor que o igual a la expresión numérica especificada.
SELECT LOG('Expresion numerica')--Devuelve el logaritmo natural de una cantidad
SELECT PI()--Devuelve el valor de PI
SELECT POWER('Expresion numerica','Numero potencia')--Devuelve el valor de la expresión especificada a la potencia especificada.
SELECT ROUND('Expresion numerica','Tamaño')--Devuelve el valor redondeado al tamaño especificado
SELECT SQRT('Expresion flotante')--Devuelve la raíz cuadrada del valor flotante especificado.
SELECT SQUARE('Expresion flotante')--Devuelve el cuadrado de un valor flotante

/*-//////////////////////////////////////////////////////////-*/
/*-////|||Funciones Replicacion|||////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT PUBLISHINGSERVERNAME()--Devuelve el nombre de la instancia
SELECT @@SERVERNAME--Devuelve el nombre de la instancia

/*-//////////////////////////////////////////////////////////-*/
/*-/////|||Funciones de Cadena|||/////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT ASCII('Caracter')--Devuelve el valor de código ASCII del carácter más a la izquierda de una expresión de caracteres
SELECT CHAR('Numero')--Convierte un valor int en ASCII 
SELECT CHARINDEX('Expresion a encontrar', 'expresion a buscar', 'inicio en int')--Busca en una cadena de texto la expresion que se le indique y en el inicio que se le especifique
SELECT CONCAT('Expresion','Expresion')--Concatena 2 o mas expresiones
SELECT DIFFERENCE('Expresion','Expresion')--Regresa la diferencia entre 2 expresiones en integer
SELECT FORMAT('valor','formato cultura-//-revisar pagina para las culturas validas-//-')--Devuelve un valor formateado con el formato especificado y la cultura opcional--https://msdn.microsoft.com/en-us/library/hh213505.aspx
SELECT LEFT('caracter','integer')--Regresa el numero de espacios especificados del caracter de la izquierda
SELECT LEN('caracter')--Devuelve el tamaño del caracter
SELECT LOWER('CARACTER')--Devuelve en minusculas el caracter especificado
SELECT UPPER('caracter')--Devuelve en mayusculas el caracter especificado
SELECT LTRIM('   caracter')--Le quita los espacios de la izquierda
SELECT RTRIM('caracter   ')--Le quita los espacios de la derecha
SELECT NCHAR('caracter')--Devuelve el carácter Unicode con el código entero especificado, según lo definido por el estándar Unicode.
SELECT PATINDEX('%patron%','caracter')--Devuelve la posicion donde inicia el caracter segun el patron especificado
SELECT QUOTENAME('caracter')/*Encierra dentro de corchetes el caracter especificado...Tambien se puede encerrar en comillas simples y/o dobles EJEMPLO*/ SELECT QUOTENAME('Prueba','''') /*y devolvera*/ 'Prueba'
SELECT REPLACE('expresion','caracter que quiere cambiar','caracter que remplazará')/*Cambia el valor de la expresion segun el valor que cambiara EJEMPLO*/ SELECT REPLACE('Prueba','ue','xx') /*y devolvera*/ Prxxba
SELECT REPLICATE('caracter','numero de veces')--Repite el caracter segun el numero de veces especificado
SELECT REVERSE('caracter')--Invierte el caracter
SELECT RIGHT('caracter','integer')--Regresa el numero de espacios especificados del caracter de la derecha
SELECT SOUNDEX('caracter')--Devuelve un código de cuatro caracteres (SOUNDEX) para evaluar la similitud entre dos secuencias.
SELECT SPACE('integer')--Agrega el numero de espacios especificidaos en una cadena concatenada
SELECT STR('expresion flotante', 'tamaño', 'decimales');--Devuelve los datos de caracteres convertidos a partir de los datos numéricos.
SELECT STUFF('caracter', 'inicio', 'final', 'caracter a insertar')--Inserta un string dentro de otro string a partir del inicio especificado y el tamaño
SELECT SUBSTRING('caracter','inicio','tamaño')--Regresa el caracter a partir del inicio y el tamaño especificado
SELECT UNICODE('ncaracter')--Devuelve el integer, segun lo definido por el estandar Unicode

/*-//////////////////////////////////////////////////////////-*/
/*-//////|||Funciones logicas|||//////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT CHOOSE('indice numerico', 'valor1', 'valor2', 'valorn...')--Elige el valor que se introdujo en la cadena de valores segun el indice especificado
SELECT IIF('expresion boleana','valor si es verdadero','valor si es falso')--Regresa el valor verdadero o falso segun la expresion boleana

/*-//////////////////////////////////////////////////////////-*/
/*-////|||Funciones Analiticas|||/////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT taskID,title ,
	CUME_DIST() OVER (PARTITION BY TITLE ORDER BY TASKID) as CumeDist
FROM TaskDetails

/*-//////////////////////////////////////////////////////////-*/
/*-//////|||Funciones Otras|||////////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT ROW_NUMBER() OVER(ORDER BY 'campo' DESC) AS Row FROM 'tabla'--Agrega una columna con un numero consecutivo (Como identity)
SELECT RANK() OVER(ORDER BY 'campo' DESC) AS Ranks FROM 'tabla'--Devuelve el rango de cada fila en la partición de un conjunto de resultados. El rango de una fila es uno más el número de rangos anteriores a la fila en cuestión
SELECT NTILE('numero de grupos') OVER(ORDER BY 'campo' DESC) AS NTILE FROM 'tabla'--Distribuye las filas de una partición ordenada en un número especificado de grupos. Los grupos se numeran a partir del uno. Para cada fila, NTILE devuelve el número del grupo al que pertenece la fila

/*-//////////////////////////////////////////////////////////-*/
/*-//////|||Funciones de Fecha|||////////-*/
/*-//////////////////////////////////////////////////////////-*/

SET DATEFIRST 'Numero' --Setea el primer dia de la semana segun el parametro asignado  
SELECT @@DATEFIRST AS 'First Day' --Obtiene el primer dia de la semana segun el seteo de DATEFIRST
SELECT CURRENT_TIMESTAMP -- Es el equivalente en ANSI a GETDATE()
SELECT DATEADD('datepart -//-revisar pagina para las datepart validas-//-','Numero','Fecha') --Devuelve la fecha especificada con el número de intervalo (entero con signo) que se añade a un determinado datepart de esa fecha--.https://msdn.microsoft.com/en-us/library/ms186819.aspx
SELECT DATEDIFF('datepart -//-revisar pagina para las datepart validas-//-','Fecha Inicio','Fecha Final') --Obtiene la diferencia de fechas segun el datepart asigando--https://msdn.microsoft.com/en-us/library/ms189794.aspx
SELECT DATEFROMPARTS ( 'Year', 'Month', 'Day' ) AS Result;  --Regresa una fecha de un Año, Mes y dia especificado
SELECT DATENAME('datepart -//-revisar pagina para las datepart validas-//-','fecha') --Devuelve una cadena de caracteres que representa el especificado datepart de la especificada la fecha--https://msdn.microsoft.com/en-us/library/ms174395.aspx
SELECT DATEPART('datepart -//-revisar pagina para las datepart validas-//-','fecha') --Devuelve un entero que representa el especificado datepart de la especificada la fecha
SELECT DATETIME2FROMPARTS ( 'año', 'mes', 'día', 'hora', 'minuto', 'segundo', 'fracciones', 'precisión' ) --Regresa una fecha de un año, mes, día, hora, minuto, segundo, fracciones y precisión especificado
SELECT DAY('Fecha') --Devuelve un integer con el dia de la fecha especificada
SELECT EOMONTH('Fecha') --Devuelve el ultimo dia del mes de la fecha escpecificada
SELECT GETDATE() --Obtiene la fecha actual
SELECT GETUTCDATE() --Obtiene la fecha actual de la fecha UTC (Coordinated Universal Time)
SELECT ISDATE ('Fecha o Expresion')  --Devuelve un 1 si la expresion o fecha es DATE, TIME o DATEIME, si no devuelve 0
SELECT MONTH('Fecha') --Devuelve un integer con el Mes de la fecha especificada
SELECT SMALLDATETIMEFROMPARTS ( 'año', 'mes', 'día', 'hora', 'minuto') ----Regresa una fecha de un año, mes, día, hora, minuto especificado
SWITCHOFFSET 'EJEMPLO' DECLARE @dt datetimeoffset = SWITCHOFFSET (CONVERT(datetimeoffset, GETDATE()), '-04:00') --Devuelve una datetimeoffset valor que se cambia desde la zona horaria almacenada para compensar a una nueva zona horaria especificada offset.
SELECT SYSDATETIME() --Devuelve una datetime2 (7) valor que contiene la fecha y la hora del equipo en el que se ejecuta la instancia de SQL Server..
SELECT SYSDATETIMEOFFSET() --Devuelve una datetimeoffset (7) valor que contiene la fecha y la hora del equipo en el que se ejecuta la instancia de SQL Server. El desplazamiento de zona horaria está incluido.
SELECT SYSUTCDATETIME() --Devuelve una datetime2 valor que contiene la fecha y la hora del equipo en el que se ejecuta la instancia de SQL Server. La fecha y la hora se devuelven como la hora UTC (Tiempo Universal Coordinado). La segunda especificación de precisión fraccionaria tiene un rango de 1 a 7 dígitos. La precisión predeterminada es de 7 dígitos.
SELECT TIMEFROMPARTS('hora', 'minuto', 'segundo', 'fracciones', 'precisión') --Regresa una fecha de un hora, minuto, segundo, fracciones y precisión especificado
SELECT YEAR('Fecha') --Devuelve un integer con el Año de la fecha especificada

/*-//////////////////////////////////////////////////////////-*/
/*-//////|||Funciones JSON|||////////-*/
/*-//////////////////////////////////////////////////////////-*/

IF ISJSON('Expresion') --Comprueba si una cadena contiene un JSON válido.    
----------------- JSON_VALUE (Funciona solo Con SQL Server 2016)-----------
DECLARE @jsonInfo VARCHAR(MAX)  
SET @jsonInfo =N'{  
    "info":{    
      "type":1,  
      "address":{    
        "town":"Bristol",  
        "county":"Avon",  
        "country":"England"  
      },  
      "tags":["Sport", "Water polo"]  
   },  
   "type":"Basic"  
}'  
SELECT JSON_VALUE(@jsonInfo, '$.info.address.town')  
---------------------------JSON_QUERY (Funciona solo Con SQL Server 2016)-------------------------------------------------
SELECT StockItemID, StockItemName,
        JSON_QUERY(Tags) as Tags,
        JSON_QUERY(CONCAT('["',ValidFrom,'","',ValidTo,'"]')) ValidityPeriod
FROM Warehouse.StockItems
FOR JSON PATH

/*-//////////////////////////////////////////////////////////-*/
/*-//////|||Funciones De Conjunto de Filas|||////////-*/
/*-//////////////////////////////////////////////////////////-*/

OPENDATASOURCE (provider_name init_string)  
--EJEMPLO
SELECT
    * FROM
OPENDATASOURCE (
   'SQLNCLI', -- or SQLNCLI
   'Data Source=OtherServer\InstanceName;Catalog=RemoteDB;User ID=SQLLogin;Password=Secret;').RemoteDB.dbo.SomeTable --Proporciona información de conexión ad hoc como parte de un nombre de objeto de cuatro partes sin necesidad de utilizar un nombre de servidor vinculado.
--
OPENQUERY ( linked_server ,'query' ) --Ejecuta la consulta de paso a través especificado en el servidor vinculado especificado. Este servidor es una fuente de datos OLE DB. OPENQUERY se puede hacer referencia en la cláusula FROM de una consulta como si se tratara de un nombre de tabla. OPENQUERY También se puede hacer referencia como la tabla de destino de una instrucción INSERT, UPDATE o DELETE. Esto está sujeto a las capacidades del proveedor OLE DB. A pesar de que la consulta puede devolver varios conjuntos de resultados, OPENQUERY devuelve sólo el primero.
OPENROWSET() --Investigar Bien --https://msdn.microsoft.com/en-us/library/ms190312.aspx
OPENXML() --Investigar Bien --https://msdn.microsoft.com/en-us/library/ms186918.aspx

/*-//////////////////////////////////////////////////////////-*/
/*-//////|||Funciones Del Sistema|||////////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT @@ERROR --Devuelve el número de error de la última instrucción de Transact-SQL ejecutada.
SELECT @@IDENTITY --Es una función del sistema que devuelve el último valor de identidad insertado.
SELECT @@PACK_RECEIVED --Devuelve el número de paquetes de entrada leídos de la red por SQL Server desde que se inició por última.
SELECT @@ROWCOUNT --Devuelve el número de filas afectadas por la última declaración
SELECT @@TRANCOUNT --Devuelve el número de declaraciones BEGIN TRANSACTION que han ocurrido en la conexión actual.
SELECT BINARY_CHECKSUM(*) from Table --Devuelve el valor de la suma binaria calculado sobre una fila de una tabla o sobre una lista de expresiones. BINARY_CHECKSUM se puede utilizar para detectar cambios en una fila de una tabla.
SELECT CHECKSUM('Expresion') --Devuelve el valor de la suma calculada sobre una fila de una tabla, o más de una lista de expresiones. CHECKSUM es para uso en la construcción de índices hash. 
'Funciona Solo con INSERT Y UPDATE' COMPRESS('Expresion') --Comprime la expresión de entrada utilizando el algoritmo GZIP. El resultado de la compresión es de matriz de bytes de tipo varbinary (max) .
SELECT  ConnectionProperty('propiedad-//-revisar pagina para las propiedades validas-//-') --Devuelve información sobre las propiedades de conexión para la conexión única que una solicitud entró.--https://msdn.microsoft.com/en-us/library/bb895240.aspx
SELECT CONTEXT_INFO(); --Devuelve el valor CONTEXT_INFO que se fijó para la sesión o lote actual mediante el SET CONTEXT_INFO.
SELECT CURRENT_REQUEST_ID() --Devuelve el ID de la solicitud actual dentro de la sesión actual.
SELECT @@SPID --Devuelve el identificador de sesión del usuario actual proceso.
SELECT DECOMPRESS() --Descomprimir expresión de entrada utilizando el algoritmo GZIP. El resultado de la compresión es la matriz de bytes (tipo varbinary (max)).
--------'ERROR_LINE'------
BEGIN TRY  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_LINE() AS ErrorLine;  
END CATCH;  
GO --Devuelve el número de la línea en que se produjo un error que causó el bloque CATCH de una construcción TRY ... CATCH.
--------'ERROR_MESSAGE'------
BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  
GO  --Devuelve un mensaje de error que causó el bloque CATCH de una construcción TRY ... CATCH.
--------'ERROR_NUMBER'------
BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_NUMBER() AS ErrorMessage;  
END CATCH;  
GO  --Devuelve el numero de error que causó el bloque CATCH de una construcción TRY ... CATCH.
--------'ERROR_PROCEDURE'------ 
BEGIN TRY  
    EXECUTE usp_ExampleProc;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_PROCEDURE() AS ErrorProcedure;  
END CATCH;  
GO   --Devuelve el nombre del procedimiento almacenado o desencadenador donde se ha producido un error que hizo que el bloque CATCH de una construcción TRY ... CATCH
--------'ERROR_SEVERITY'------
BEGIN TRY  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_SEVERITY() AS ErrorMessage;  
END CATCH;  
GO  --Devuelve la gravedad del error que causó el bloque CATCH de una construcción TRY ... CATCH.
--------'ERROR_STATE'------
BEGIN TRY  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_STATE() AS ErrorMessage;  
END CATCH;  
GO  --Devuelve el número de estado del error que causó el bloque CATCH de una construcción TRY ... CATCH
SELECT FORMATMESSAGE('Numero de Mensaje','Cadena En String');  
	--Ejemplo
	DECLARE @var1 VARCHAR(200);   
	SELECT @var1 = FORMATMESSAGE(20009, 'First Variable', 'Second Variable');   
	SELECT @var1; --Construye un mensaje de un mensaje existente en sys.messages o de una cadena proporcionada. La funcionalidad de FORMATMESSAGE asemeja a la de la instrucción RAISERROR. Sin embargo, RAISERROR imprime el mensaje de inmediato, mientras que FORMATMESSAGE devuelve el mensaje con formato para su posterior procesamiento.
SELECT GETANSINULL('servicedesk') --Devuelve la capacidad de nulos por defecto de la base de datos para esta sesión.
CREATE TABLE ( HOST VARCHAR(25) DEFAULT HOST_ID()) --Devuelve el número de identificación de la estación de trabajo. El número de identificación de estación de trabajo es el identificador de proceso (PID) de la aplicación en el equipo cliente que se conecta a SQL Server.
CREATE TABLE ( HOST VARCHAR(25) DEFAULT HOST_NAME())--Devuelve el nombre de estación de trabajo.
SELECT ISNULL('Campo','Valor que se muestra si el campo es nulo') --Sustituye a NULL con el valor de sustitución especificado.
SELECT ISNUMERIC('expresion') --Determina si una expresión es un tipo numérico válido.
PRINT MIN_ACTIVE_ROWVERSION() --Devuelve el activo más bajo rowversion valor en la base de datos actual. Un ""rowversion"" valor está activo si se utiliza en una transacción que aún no se ha confirmado. Para obtener más información,
SELECT NEWID() --Crea un UUID DIferente cada vez que se ejecuta
CREATE TABLE myTable (ColumnA uniqueidentifier DEFAULT NEWSEQUENTIALID()); --Crea un GUID que es mayor que cualquier GUID generado previamente por esta función en un equipo determinado desde que se inicia Windows. Después de reiniciar Windows, el GUID puede empezar de nuevo a partir de una gama más baja, pero sigue siendo único a nivel mundial. Cuando una columna GUID se utiliza como un identificador de fila, utilizando NEWSEQUENTIALID puede ser más rápido que el uso de la función NEWID. Esto se debe a que la función hace que la actividad NEWID al azar y utiliza menos páginas en caché de datos. Usando NEWSEQUENTIALID también ayuda a llenar completamente las páginas de datos y de índice.
SELECT ROWCOUNT_BIG() --Devuelve el número de filas afectadas por la última instrucción ejecutada. Esta función opera como @@ ROWCOUNT , excepto el tipo de retorno de ROWCOUNT_BIG es BIGINT .
XACT_STATE() --Mas Informacion --https://msdn.microsoft.com/en-us/library/ms189797.aspx

/*-//////////////////////////////////////////////////////////-*/
/*-//////|||Funciones Estadisticas Del Sistema|||////////-*/
/*-//////////////////////////////////////////////////////////-*/

SELECT @@CONNECTIONS --Devuelve el número de intentos de conexión, ya sea o no con éxito desde que SQL Server se inició.
SELECT @@CPU_BUSY --Devuelve el tiempo que SQL Server ha estado trabajando desde que se inició. El resultado es en incrementos de tiempo de CPU, o "ticks", y es acumulativa para todas las CPU, por lo que puede exceder el tiempo transcurrido real. Multiplicar por @@ TimeTicks para convertir en microsegundos.
SELECT @@IDLE --Devuelve el tiempo que SQL Server ha estado inactivo desde que se inició por última vez. El resultado es en incrementos de tiempo de CPU, o "ticks", y es acumulativa para todas las CPU, por lo que puede exceder el tiempo transcurrido real. Multiplicar por @@ TimeTicks para convertir en microsegundos.
SELECT @@IO_BUSY --Devuelve el tiempo que SQL Server ha empleado en realizar las operaciones de entrada y salida desde SQL Server inició por última vez. El resultado es en incrementos de tiempo de CPU ( "clics"), y es acumulativa para todas las CPU, por lo que puede exceder el tiempo transcurrido real. Multiplicar por @@ TimeTicks para convertir en microsegundos.
SELECT @@PACK_SENT --Devuelve el número de paquetes de salida descritos a la red por SQL Server desde que se inició.
SELECT @@PACKET_ERRORS --Devuelve el número de paquetes de errores de red que se han producido en las conexiones de SQL Server desde SQL Server se inició por última vez.
SELECT @@TIMETICKS --Devuelve el número de microsegundos por Tick.
SELECT @@TOTAL_ERRORS --Devuelve el número de errores de escritura de disco encontradas por SQL Server desde SQL Server se inició por última vez.
SELECT @@TOTAL_READ --Devuelve el número de lecturas de disco, no lee la memoria caché, desde SQL Serve se inició por última vez.
SELECT @@TOTAL_WRITE --Devuelve el número de escrituras en disco por SQL Server desde SQL Server se inició por última vez

