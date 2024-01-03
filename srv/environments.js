module.exports = (srv) => {

    // // Reply mock data for Books...
    srv.on ('READ', 'Environments', ()=>[
      { ID:201, name:'Concur EMEA' },
      { ID:251, name:'Concur US'}
    ])
   
    // // Reply mock data for Authors...
    srv.on ('READ', 'EnvironmentVariables', ()=>[
      { ID:101, Parent_ID: 201, name:'limit', value: '100' },
      { ID:102, Parent_ID: 251, name:'limit', value: '1000' },    ])
   }