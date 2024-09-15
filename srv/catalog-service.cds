using {ns.clientProp as clientProp} from '../db/schema';


define service CatalogService {
    entity Clients as projection on clientProp.ContextClientes.Clientes;
    entity Propiedades as projection on clientProp.ContextPropiedades.Propiedades;
    entity EstadoCivil as projection on clientProp.ContextClientes.EstadoCivil;
}

define service CatalogService2 {
    entity Clientes as
    select from clientProp.ContextClientes.Clientes {
        Nombre,
        Edad,
        EstadoCivil.Nombre as n,
        Propiedades @mandatory,
        Propiedades.ID,
    };
    

}