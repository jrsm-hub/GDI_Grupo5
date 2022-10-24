//USE
use clinica;

//RENAMECOLLECTION ✓
//irá alterar o nome da coleção de profissional para profissionais (PRECISA RODAR ANTES DOS OUTROS)
db.profissional.renameCollection("profissionais");

//COUNT ✓
//Retorna a quantidade de documentos em cada coleção 
db.servicos.count();
db.profissionais.count();
db.areas.count();

//UPDATE, SET ✓
//Adiciona plano ao servico de radigrafia
db.servicos.update(
    {id_servico: "r0p1"},
    {$set: {"plano": "sim"}}

);

//ADDTOSET ✓
//Adiciona Reabilitação Traumato-Ortopédica nos servicoes realizados por Rafael Portugal
db.profissionais.updateOne(
    {id_profissional: "p0f0"},
    {$addToSet: {"servicos": db.servicos.findOne({id_servico: "f0p3"})._id}}
);

//EXISTS ✓
//Retorna os serviços que podem ser cobertos por plano de saúde
db.servicos.find({plano : {$exists: true}}).pretty();

//FIND ✓
//Retorna todos as áreas salvas 
db.areas.find().pretty();

//ALL ✓
//Retorna os profissionais que realizam os serviços determinados
db.profissionais.find({servicos: {$all: [
    db.servicos.findOne({id_servico: "o0p3"})._id,
    db.servicos.findOne({id_servico: "o0p4"})._id
]}}).pretty();

//FINDONE ✓
//Retorna um profissional de odontologia
db.profissionais.findOne({area: "Odontologia"});

//MATCH/AGGREGATE ✓
//Agrega e Retorna os serviços que possuem preços entre 499 e 899 reais
db.servicos.aggregate([{$match: {preco: {$gt: 499, $lt: 899}}}]).pretty();

//AGGREGATE, GROUP, MAX, AVG, MIN, SUM ✓
//Agrega os profissionais por area, e retona o salário mais alto, o salário médio e o mais baixo, bem como o qunato que cada área rende
db.profissionais.aggregate([
    {
        $group: {
            _id: "$area",
            salario_maximo: {$max: "$salario"},
            salario_medio: {$avg: "$salario"},
            salario_menor: {$min: "$salario"},
            salario_total: {$sum: "$salario"}

        }
    }
]).pretty();

//SORT ✓
//Ordena os profissionais por ordem de preço
db.profissionais.find().sort({salario: -1}).pretty();

//COND PROJECT✓
//Aplica 25% de desconto nos servicos de fisioterapia
db.servicos.aggregate([
    { 
        $project: {
        nome: 1,
        preco: '$preco',
        promocao: {$cond: {if: {$in: ["$id_servico", ["f0p1","f0p2","f0p3","f0p4","f0p5","f0p6"]]},then: { $multiply: [ "$preco", 0.75 ] } , else: 'Promoção Indisponivel' }},
        _id: 0
        }
    }
]).pretty();

//SIZE ✓
//Retorna os Funcionários e quantidade de serviços que eles fazem 
db.profissionais.aggregate([
    {
        $project:{
            nome: 1,
            salario: "$salario",
            numServicos: {$size: "$servicos"},
            _id: 0
        }
    },
    { $sort: {numServicos:-1, salario: -1}}
]).pretty();

//LOOKUP
//Estabelece um outer join entre profissionais e servicos e utiliza isso para mostrar quais servicos de cada medico tem plano
db.profissionais.aggregate([
    {
        $lookup: {
            from: "servicos",
            localField: "servicos",
            foreignField: "_id",
            as: "servicos_info"
        }
    },

    {
        $project: {
            _id:0,
            nome: 1,
            area: 1,
            servicosPlano:{
                $filter: {
                    input: "$servicos_info",
                    as: "servico",
                    cond: {$eq: ["$$servico.plano", "sim"]}
                }
            }
        }
    }
]).pretty();

//GTE✓
//Mostra os Profissionais que tem um salário maior que a média salarial dos profissionais
db.profissionais.find({salario: {$gte: 9950 }}).pretty();

//SAVE✓
//Salva um novo serviço de Raidiologia na coleção de 
db.servicos.find( {id_servico: "r0p6"});
db.servicos.save({
    nome: "Densitometria Óssea",
    descricao: "Exame radiológico que permite avaliar a presença de doenças ósseas como Osteoporose.",
    preco: 220.0,
    id_servico: "r0p6",
    plano: "sim"
});
db.servicos.find( {id_servico: "r0p6"});
//TEXT, SEARCH ✓
//Retorna todos os serviços que são exames
db.servicos.createIndex({ descricao: "text" }); 
db.servicos.find( { $text: { $search: "Exame"} } ).pretty();

//Limit✓
//Retorna 5 servicos com o preco menor que 200 reais
db.servicos.find({preco:{$lt: 200}}).limit(5).pretty();

//WHERE, FUNCTION ✓
//Retorna um profissional com id p1o0
db.profissionais.find({$where: function(){
    return (this.id_profissional == "p1o0")
}}).pretty();

//MAPREDUCE ✓
//Seleciona os profissionais da área de ortopedia, agrupa pelo nome e conta as ocorrências
db.profissionais.mapReduce(
    function() { emit( this.area, this.salario ); },
    function(key, values) { return Array.sum(values); },
    {   
        query: { servicos:{$not: {$size:4} }},
        out: "mapReduce"
    }
);
db.mapReduce.find().pretty();

/*

- [x] USE
- [x] RENAMECOLLECTION
- [x] COUNT
- [x] COND
- [x] GTE
- [x] EXISTS
- [x] SET
- [x] FIND
- [x] SORT
- [x] ALL
- [x] SAVE
- [x] FINDONE
- [x] AGGREGATE
- [x] GROUP
- [x] MAX
- [x] AVG
- [x] SUM
- [x] LIMIT
- [X] $WHERE
- [X] FUNCTION
- [x] UPDATE
- [x] ADDTOSET
- [x] PRETTY
- [x] MATCH
- [x] TEXT
- [x] SEARCH
- [x] MAPREDUCE
- [x] LOOKUP
- [x] PROJECT
- [x] SIZE
- [x] FILTER
*/