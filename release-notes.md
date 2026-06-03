- Fixed the invariant 'medcom-carecommunication-definition-url' regex so that it properly testes that the messageheader is major version 5 of carecommunication.
This was already a requirement of the standard, it just wasn't enforced correctly by the invariant and therefore neither the validators.
