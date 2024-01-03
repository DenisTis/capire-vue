using { cuid } from '@sap/cds/common';
namespace dst.app.environments;

entity Environments: cuid {
    name: String;
    description: String;
}

entity EnvironmentVariables: cuid {
    @Core.Immutable  @mandatory Parent: Association to one Environments;
    name: String;
    value: String; //Can be number, date or boolean actually
}