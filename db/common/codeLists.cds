using { sap.common.CodeList as CodeList } from '@sap/cds/common';
namespace dst.app.common.codelists;

entity RequestTypes: CodeList{
    key code: String(10);
}
// entity BodyTypes: {
//     key code: String(10);
// }