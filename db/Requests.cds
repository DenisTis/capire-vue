using { cuid } from '@sap/cds/common';
using {dst.app.common.codelists} from './common/codeLists';

namespace dst.app.requests;

entity Requests: cuid {
    path: String;
    description: String;
    type: Association to one codelists.RequestTypes;
    body: String;
}

entity RequestHeaders: cuid {
    @Core.Immutable  @mandatory Parent: Association to one Requests;
    name: String;
    value: String; //Can be number, date or boolean actually
}