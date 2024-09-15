using {ns.clientProp as clientProp} from '../db/schema';


define service CatalogService {
    entity Clients     as projection on clientProp.ContextClientes.Clientes;
    entity Propiedades as projection on clientProp.ContextPropiedades.Propiedades;
    entity EstadoCivil as projection on clientProp.ContextClientes.EstadoCivil;
}

define service CatalogServiceDos {
    entity Clientes    as
        select from clientProp.ContextClientes.Clientes {
            ID                 as IdCliente,
            Nombre,
            Edad,
            EstadoCivil.Nombre as EstadoCivil,
            Propiedades,
        };
// Como hacer si al momento de crear un cliente le quiero poner el estadoCivil (que es otra tabla)
    entity Propiedades as
        select from clientProp.ContextPropiedades.Propiedades {
            *,
            Departamento,
            Cliente,
        }
}
