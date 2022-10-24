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

//Dermatologia ✓
//Odontologia ✓
//Fisioterapia ✓
//Ortopedia✓
//Radiologista ✓