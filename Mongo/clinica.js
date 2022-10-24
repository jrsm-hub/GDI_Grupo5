//Documento consiste nas junções dos arquivos de povoamento e consulta
//Link do github: https://github.com/jrsm-hub/GDI_Grupo5-2022.1/tree/main/Mongo

use clinica;

//Vai dropar o database para que possa ser povoado novamente
db.dropDatabase();

//Criação da coleçãp Servicos
db.createCollection("servicos");

//Insere os serviços 
db.servicos.insertMany([
 
    // Odontologia
    {
        nome: "Extração",
        descricao: "Procedimento cirúrgico para remover um dente.",
        preco: 99.90,
        id_servico: "o0p1",
        plano: "sim"
    },

    {
        nome: "Retratamento de Canal",
        descricao: "Procedimento para tratamento de cárie, refazendo a polpa dentária",
        preco: 149.90,
        id_servico: "o0p2"
    },

    {
        nome: "Limpeza dentária",
        descricao: "O dentista limpa dente por dente, realizando raspagem do tártaro com curetas e tiras de aço.",
        preco: 200.00,
        id_servico: "o0p3"
    },

    {
        nome: "Restauração",
        descricao: "Procedimento para restaurar dente quebrado",
        preco: 89.00,
        id_servico: "o0p4",
        plano: "sim"
    },

    {
        nome: "Clareamento",
        descricao: "Retira os pigmentos e manchas do esmalte e da dentina dos dentes",
        preco: 400.00,
        id_servico: "o0p5"
    },

    {
        nome:"Tratamento ortodôntico",
        descricao:"Corrige a posição dos dentes e dos ossos maxilares",
        preco: 500.00,
        id_servico: "o0p6"
    },

    //Radiologia
    {
        nome: "Radiografia",
        descricao: "Exame de raio X, que mostra partes internas do organismo",
        preco: 199.99,
        id_servico: "r0p1"
    },
    {
        nome: "Mamografia",
        descricao: "Exame de raio X feito nas mamas",
        preco: 239.00,
        id_servico: "r0p2",
        plano: "sim"
    },
    {
        nome: "Tomografia",
        descricao: "Exame radiológico que permite visualizar as estruturas anatômicas na forma de cortes.",
        preco: 500.0,
        id_servico: "r0p3",
        plano: "sim"
    },
    {
        nome: "Ressonância Magnética",
        descricao: "Exame de imagem com alta capacidade de diferenciar várias características dos tecidos biológicos.",
        preco: 600.00,
        id_servico: "r0p4",
        plano: "sim"
    },
    {
        nome: "Ultrassonografia",
        descricao: " Exame de imagem baseado no contato das ondas sonoras com o corpo humano ",
        preco: 420.00,
        id_servico: "r0p5",
        plano: "sim"
    },

    // Dermatologia
    {
        nome: "Aplicação de toxina botulínica",
        descricao: "Aplicação de Botox",
        preco: 900.00 ,
        id_servico: "d0p1"
        
    },
    
    {
        nome: "Depilação a laser",
        descricao: "Depilação por meio da exposição a pulsos de luz laser que destroem o folículo piloso",
        preco: 400.00 ,
        id_servico: "d0p2"
    },

    {
        nome: "Esfoliação química superficial",
        descricao: " Procedimento que desprende as células mortas, deixando a pele nova com mais brilho e uma textura mais macia.",
        preco: 500.00,
        id_servico: "d0p3"
    },
    
    {
        nome: "Dermoabrasão",
        descricao: " Procedimento cirúrgico que remove camadas superficiais da pele por lixamento controlado.",
        preco: 900.00,
        id_servico: "d0p4"
    },
    
    {
        nome: "Preenchimento facial",
        descricao: "É o procedimento responsável pela remodelação facial, cuidando da sustentação da pele.",
        preco:900.00 ,
        id_servico: "d0p5"
    },
    
    {
        nome: "Limpeza de Pele",
        descricao: "Remoção das impurezas do rosto, desentupindo os poros e combatendo o excesso de oleosidade",
        preco: 120.00,
        id_servico: "d0p6"
    },

    //Fisioterapia
    {
        nome: "Reeducação Postural Global",
        descricao: " Método fisioterapêutico de correção postural que trabalha o paciente de forma global.",
        preco: 104.00 ,
        id_servico: "f0p1"
    },
    {
        nome: "Acupuntura",
        descricao: "Técnica que utiliza agulhas metálicas para tratar doenças e disturbios do corpo.",
        preco: 90.00,
        id_servico: "f0p2"
    },
    {
        nome: "Reabilitação Traumato-Ortopédica",
        descricao: "Tem como objetivo reabilitar pacientes que estão com alguma deficiência no sistema musculoesquelético",
        preco: 100.00,
        id_servico: "f0p3",
        plano: "sim"
    },
    {
        nome: "Ventosaterapia",
        descricao: "Tratamento com ventosas para eliminar pontos de tensão, recomendado para dor nas costas",
        preco: 120.00,
        id_servico: "f0p4"
    },
    {
        nome: "Sessão de Osteopatia",
        descricao: "Utilização de técnicas de massagem para realizar o trabalho de músculos, ossos e ligamentos",
        preco: 115.00,
        id_servico: "f0p5"
    },
    {
        nome: "Sessão de Quiropraxia",
        descricao: "Manipulação articular da coluna para realinhar o eixo do corpo",
        preco: 140.00,
        id_servico: "f0p6"
    },

    // Ortopedia
    {
        nome: "Reconstrução Ligamentar",
        descricao: "Reconstrução do ligamento em alguma estrutura corporal que teve essa estrutura lesada",
        preco: 10000.00 ,
        id_servico: "o1p1"
    },
    {
        nome: "Meniscectomia",
        descricao: "Reconstrução do menisco por lesão ou ruptura",
        preco: 7000.00,
        id_servico: "o1p2"
    },
    {
        nome: "Transferência tendinosa",
        descricao: " Substituição de um tendão por outro, que não está mais presente ou que não está funcionando corretamente",
        preco: 1000.00,
        id_servico: "o1p3"
    },
    {
        nome: "Reparação de fraturas",
        descricao: "Imobilização de parte corporal fraturada com talas e gesso com o objetivo de reparar fraturas",
        preco: 500.00 ,
        id_servico: "o1p4"
    },
    {
        nome: "Infiltração",
        descricao: "Aplicação de medicamento no tecido para reduzir a dor em uma região inflamada",
        preco: 600.00,
        id_servico: "o1p5"
    },
    {
        nome: "Diagnóstico de lesões/doenças",
        descricao: "Avalia o paciente com o objetivo de diagnosticar algum problema de que o paciete se queixa",
        preco: 120.00,
        id_servico: "o1p6"
    }
]);

//criação da coleção Profissional
db.createCollection("profissional");

//Insere os profissionais 
db.profissional.insertMany([
    {
        //Odontologia
        nome: "Pedro Luís",
        area: "Odontologia",
        salario: 9000.00,
        servicos: [
            db.servicos.findOne({id_servico: "o0p1"})._id, 
            db.servicos.findOne({id_servico: "o0p2"})._id, 
            db.servicos.findOne({id_servico: "o0p3"})._id,  
            db.servicos.findOne({id_servico: "o0p4"})._id,
           
        ],
        id_profissional: "p0o0"
    },

    {
        nome: "Thiago Aquino",
        area: "Odontologia",
        salario: 15000.00,
        servicos: [ 
            db.servicos.findOne({id_servico: "o0p3"})._id,  
            db.servicos.findOne({id_servico: "o0p4"})._id,
            db.servicos.findOne({id_servico: "o0p5"})._id,
            db.servicos.findOne({id_servico: "o0p6"})._id
        ],
        id_profissional: "p1o0"
    },
    
    //Dermatologia
    {
        nome: "Vitoria Hours",
        area: "Dermatologia",
        salario: 7500.00,
        servicos: [
            db.servicos.findOne({id_servico: "d0p1"})._id,  
            db.servicos.findOne({id_servico: "d0p3"})._id,  
            db.servicos.findOne({id_servico: "d0p5"})._id,
            db.servicos.findOne({id_servico: "d0p6"})._id
        ],
        id_profissional: "p0d0"
    },
    {
        nome: "Paula Seconds",
        area: "Dermatologia",
        salario: 9500.00,
        servicos: [ 
            db.servicos.findOne({id_servico: "d0p2"})._id, 
            db.servicos.findOne({id_servico: "d0p4"})._id,
            db.servicos.findOne({id_servico: "d0p5"})._id,
            db.servicos.findOne({id_servico: "d0p6"})._id
        ],
        id_profissional: "p1d0"
    },

    //Fisioterapia
    {
        nome: "Rafael Portugal",
        area: "Fisioterapia",
        salario: 7000.00,
        servicos: [
            db.servicos.findOne({id_servico: "f0p1"})._id, 
            db.servicos.findOne({id_servico: "f0p2"})._id, 
            db.servicos.findOne({id_servico: "f0p6"})._id
        ],
        id_profissional: "p0f0"
    },
    {
        nome: "Priscila Freitas",
        area: "Fisioterapia",
        salario: 8500.00,
        servicos: [ 
            db.servicos.findOne({id_servico: "f0p3"})._id,  
            db.servicos.findOne({id_servico: "f0p4"})._id,
            db.servicos.findOne({id_servico: "f0p5"})._id,
            db.servicos.findOne({id_servico: "f0p6"})._id
        ],
        id_profissional: "p1f0"
    },

    //Ortopedia
    {
        nome: "Stemberg Vasconcelos",
        area: "Ortopedia",
        salario: 20000.00,
        servicos: [
            db.servicos.findOne({id_servico: "o1p1"})._id, 
            db.servicos.findOne({id_servico: "o1p2"})._id, 
            db.servicos.findOne({id_servico: "o1p3"})._id,  
            db.servicos.findOne({id_servico: "o1p4"})._id,
            db.servicos.findOne({id_servico: "o1p5"})._id,
            db.servicos.findOne({id_servico: "o1p6"})._id
        ],
        id_profissional: "p0o1"
    },

    {
        nome: "Leonardo Monteiro",
        area: "Ortopedia",
        salario: 15000.00,
        servicos: [
            db.servicos.findOne({id_servico: "o1p1"})._id, 
            db.servicos.findOne({id_servico: "o1p5"})._id,
            db.servicos.findOne({id_servico: "o1p6"})._id
        ],
        id_profissional: "p0o1"
    },

    //Radiologia
    {
        nome: "Drauzio Costa",
        area: "Radiologia",
        salario: 3000.00,
        servicos: [
            db.servicos.findOne({id_servico: "r0p1"})._id, 
            db.servicos.findOne({id_servico: "r0p2"})._id, 
            
            
        ],
        id_profissional: "p0r0"
    },
    {
        nome: "Vitor Campelo",
        area: "Radiologia",
        salario: 5000.00,
        servicos: [
            db.servicos.findOne({id_servico: "r0p3"})._id,  
            db.servicos.findOne({id_servico: "r0p4"})._id,
            db.servicos.findOne({id_servico: "r0p5"})._id
            
        ],
        id_profissional: "p1r0"
    }
    
]);

//Criação da coleção áreas
db.createCollection("areas");

//Insere as áreas
// Dermatologia
db.areas.insertOne(
    {
        nome: "Dermatologia",
        profissional: [
            db.profissional.findOne({id_profissional: "p0d0"}),
            db.profissional.findOne({id_profissional: "p1d0"})
        ]
    }
);
//Odontologia
db.areas.insertOne(
    {
        nome: "Odontologia",
        profissional: [
            db.profissional.findOne({id_profissional: "p0o0"}),
            db.profissional.findOne({id_profissional: "p1o0"})
        ]
    }
);
// Fisioterapia
db.areas.insertOne(
    {
        nome: "Fisioterapia",
        profissional: [
            db.profissional.findOne({id_profissional: "p0f0"}),
            db.profissional.findOne({id_profissional: "p1f0"})
        ]
    }
);
// Ortopedia
db.areas.insertOne(
    {
        nome: "Ortopedia",
        profissional: [
            db.profissional.findOne({id_profissional: "p0o1"}),
            db.profissional.findOne({id_profissional: "p1o1"})
        ]
        
    }
);

//Radiologia
db.areas.insertOne(
    {
        nome: "Radiologia",
        profissional: [
            db.profissional.findOne({id_profissional: "p0r0"}),
            db.profissional.findOne({id_profissional: "p1r0"}),

        ]
    }
);

//Exibe o nome das coleções que foram criadas 
show collections;

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