
CREATE TABLE ns_clientProp_ContextClientes_Clientes (
  ID NVARCHAR(36) NOT NULL,
  Nombre NVARCHAR(50),
  Edad NVARCHAR(2),
  EstadoCivil INTEGER,
  PRIMARY KEY(ID)
);

CREATE TABLE ns_clientProp_ContextPropiedades_Propiedades (
  ID NVARCHAR(36) NOT NULL,
  Nombre NVARCHAR(50),
  Descripcion NVARCHAR(255),
  FechaAdquisicion DATE_TEXT,
  Precio DECIMAL(16, 2),
  TipoVivienda INTEGER,
  Ambientes INTEGER,
  Direccion NVARCHAR(255),
  Departamento_Piso INTEGER,
  Departamento_NumeroDepto INTEGER,
  Cliente_ID NVARCHAR(36),
  PRIMARY KEY(ID)
);

