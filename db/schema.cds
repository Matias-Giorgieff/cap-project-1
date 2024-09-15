namespace ns.clientProp;

using {
    cuid,
    managed
} from '@sap/cds/common';

////////////ENUM////////////
type EstadoCivilENUM      : Integer enum {
    Soltero = 1;
    Divorciado = 2;
    Casado = 3;
};
type TipoViviendaENUM : Integer enum {
    Casa = 1;
    Departamento = 2;
};


type Departamento     : {
    Piso : Integer;
    NumeroDepto : Integer;
};


context ContextClientes {
    entity  Clientes : cuid {
        Nombre : String(50);
        Edad   : String(2);
        EstadoCivil :  Association to EstadoCivil;
        Propiedades      : Association to many ContextPropiedades.Propiedades
                               on Propiedades.Cliente = $self;
    }
    entity EstadoCivil {
        key ID : String(2);
        Nombre : String(50);
    }
    
}

context ContextPropiedades {
    entity Propiedades : cuid, {
        Nombre : String(50);
        Descripcion : String;
        FechaAdquisicion : Date;
        Precio :  Decimal(16, 2);
        TipoVivienda: TipoViviendaENUM;
        Ambientes : Integer;
        Direccion : String;
        Departamento : Departamento;
        Cliente : Association to ContextClientes.Clientes;
    }

 
}
