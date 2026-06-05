- Fixed the invariant 'medcom-careCommunication-15' so that it properly testes that if there is an encounter in the bundle, the Communication ressource must reference it.
This was already a requirement of the standard, it just wasn't enforced correctly by the invariant and therefore neither the validators. Hence why this is a patch.
