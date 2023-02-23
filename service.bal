import ballerina/graphql;

public type PetItem record {|
    readonly int id;
    string title;
    string description?;
    decimal price?;
|};

table<PetItem> key(id) petEntriesTable = table [
    {id: 1, title: "Pet 1", description: "Blah", price: 7386},
    {id: 2, title: "Pet 2", description: "Blah", price: 15243},
    {id: 3, title: "Pet 3", description: "Blah", price: 880976}
];

service /petscatalog on new graphql:Listener(9090) {

   resource function get all() returns PetItem[] {
       // PetItem[] petEntries = petEntriesTable.toArray().cloneReadOnly();
        PetItem[] petItem = [
            {id: 1, title: "Pet 1", description: "Blah", price: 7386},
            {id: 2, title: "Pet 2", description: "Blah", price: 1243},
            {id: 3, title: "Pet 3", description: "Blah", price: 976}
        ];
        //return petEntries.map(entry => new petEntries(entry));
        return petItem;
    }
}
