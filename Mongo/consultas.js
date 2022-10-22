//USE
use clinica;

//RENAMECOLLECTION
//irá alterar o nome da coleção de profissional para profissionais 
db.profissional.renameCollection("profissionais");

//COUNT
//Retorna a quantidade de documentos em cada coleção 
db.servicos.count();
db.profissionais.count();
db.areas.count();

//EXISTS
//Retorna os serviços que podem ser cobertos por plano de saúde
db.servicos.find({plano : {$exists: true}}).pretty();

//FIND
//Retorna todos as áreas salvas 
db.areas.find().pretty();

//ALL 
//Retorna os profissionais que realizam os serviços determinados
db.profissionais.find({servicos: {$all: [
    db.servicos.findOne({id_servico: "o0p3"})._id,
    db.servicos.findOne({id_servico: "o0p4"})._id
]}}).pretty();

//FINDONE
//Retorna um profissional de odontologia
db.profissionais.findOne({area: "Odontologia"});

//MATCH/AGGREGATE
//Agrega e Retorna os serviços que possuem preços entre 499 e 899 reais
db.servicos.aggregate([{$match: {preco: {$gt: 499, $lt: 899}}}]).pretty();

//AGGREGATE, GROUP, MAX, AVG, MIN
//Agrega os profissionais por categoria, e retona o salário mais alto, o salário médio e o mais baixo
db.profissionais.aggregate([
    {
        $group: {
            _id: "$categoria",
            salario_maximo: {$max: "$salario"},
            salario_medio: {$avg: "$salario"},
            salario_menor: {$min: "$salario"}
        }
    }
]).pretty();

//SORT
//Ordena os profissionais por ordem de preço
db.profissionais.find().sort({salario: -1}).pretty();

/*

- [x] USE
- [x] RENAMECOLLECTION
- [x] COUNT
- [] COND
- [] GTE
- [x] EXISTS
- [] LOOKUP
- [] SET
- [] FILTER
- [x] FIND
- [x] SORT
- [x] ALL
- [] SAVE
- [x] FINDONE
- [x] AGGREGATE
- [x] GROUP
- [x] MAX
- [x] AVG
- [] SUM
- [] LIMIT
- [] $WHERE
- [] FUNCTION
- [] UPDATE
- [] ADDTOSET
- [x] PRETTY
- [] PROJECT
- [] SIZE
- [x] MATCH
- [] TEXT
- [] SEARCH
- [] MAPREDUCE
*/