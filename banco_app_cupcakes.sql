CREATE DATABASE app_cupcakes;
USE app_cupcakes;

CREATE TABLE historias_usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    requerente VARCHAR(100),
    acao TEXT,
    comentarios TEXT,
    criterios_aceitacao TEXT,
    regras_negocio TEXT,
    requisito_nao_funcional TEXT,
    prioridade VARCHAR(10),
    pontos_historia INT
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Cadastro de Cliente",
    "Cliente",
    "Quero criar uma conta no app para acompanhar meus pedidos.",
    "Deve haver validação de dados obrigatórios.",
    "CA#1 O cliente consegue se cadastrar com nome, e-mail, senha e telefone. CA#2 Recebe confirmação de cadastro.",
    "RN#1 E-mail deve ser único no sistema.",
    "RN F#1 Tempo de resposta do cadastro < 2s.",
    "A",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Login de Cliente",
    "Cliente",
    "Quero fazer login com meu e-mail e senha.",
    "Pode incluir login com redes sociais em futuras versões.",
    "CA#1 Login realizado com credenciais válidas. CA#2 Mensagem de erro para credenciais inválidas.",
    "RN#1 Senha deve ter no mínimo 6 caracteres.",
    "RN F#1 Tempo de resposta < 1,5s.",
    "A",
    2
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Vitrine Online de Cupcakes",
    "Cliente",
    "Quero visualizar os cupcakes disponíveis com fotos e preços.",
    "A vitrine deve ser atrativa e organizada por categorias.",
    "CA#1 Cupcakes listados com nome, imagem, descrição e preço.",
    "RN#1 Produtos fora de estoque não aparecem na vitrine.",
    "RN F#1 Imagens otimizadas para carregar em até 2s.",
    "A",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Detalhes do Produto",
    "Cliente",
    "Quero clicar em um cupcake para ver mais detalhes.",
    "Mostrar ingredientes e alérgenos.",
    "CA#1 Exibe nome, descrição, ingredientes, foto, e botão 'Adicionar ao carrinho'.",
    "RN#1 Cupcakes podem ter variações de sabor.",
    "RN F#1 Layout responsivo e intuitivo.",
    "A",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Carrinho de Compras",
    "Cliente",
    "Quero adicionar cupcakes ao carrinho e revisar antes de comprar.",
    "Deve permitir alterar quantidades ou remover itens.",
    "CA#1 Cupcakes adicionados, editáveis e removíveis no carrinho.",
    "RN#1 Valor total deve ser atualizado automaticamente.",
    "RN F#1 Resposta rápida (até 1s) para qualquer ação no carrinho.",
    "A",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Checkout com Endereço de Entrega",
    "Cliente",
    "Quero informar meu endereço para receber os cupcakes em casa.",
    "Endereço pode ser salvo para pedidos futuros.",
    "CA#1 O usuário consegue inserir e salvar um endereço completo. CA#2 Sistema valida CEP.",
    "RN#1 Apenas CEPs da área de entrega são aceitos.",
    "RN F#1 Validação instantânea via API de CEP.",
    "A",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Pagamento via Cartão",
    "Cliente",
    "Quero pagar meus pedidos com cartão de crédito pelo app.",
    "Integração com gateway de pagamento.",
    "CA#1 Cliente insere dados do cartão com segurança. CA#2 Transação confirmada ou rejeitada com aviso claro.",
    "RN#1 Pagamento deve ser criptografado.",
    "RN F#1 Integração segura com PCI compliance.",
    "A",
    8
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Histórico de Pedidos",
    "Cliente",
    "Quero visualizar meus pedidos anteriores no app.",
    "Pode incluir opção de repetir pedido.",
    "CA#1 Lista com data, valor e status de pedidos anteriores.",
    "RN#1 Pedidos devem ser mantidos por no mínimo 6 meses.",
    "RN F#1 Consulta deve retornar em até 2s.",
    "A",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Acompanhamento de Entrega",
    "Cliente",
    "Quero acompanhar o status do meu pedido em tempo real.",
    "Exibir status como 'Preparando', 'Saiu para entrega' etc.",
    "CA#1 Pedido atualizado em tempo real com status claro.",
    "RN#1 Atualizações feitas pela equipe da loja.",
    "RN F#1 Tempo de atualização não deve exceder 30 segundos.",
    "A",
    8
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Avaliação de Pedido",
    "Cliente",
    "Quero avaliar minha compra após receber o pedido.",
    "Sistema de estrelas e comentário opcional.",
    "CA#1 Avaliação enviada e vinculada ao pedido.",
    "RN#1 Avaliações só são permitidas após entrega.",
    "RN F#1 Feedback armazenado com tolerância a falhas.",
    "C",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Cadastro de Cupcakes (Admin)",
    "Administrador",
    "Quero cadastrar novos sabores no app.",
    "Incluir foto, descrição e preço.",
    "CA#1 Admin pode criar cupcakes com nome, preço e imagem.",
    "RN#1 Cupcakes sem preço não podem ser salvos.",
    "RN F#1 Interface de cadastro simples e acessível.",
    "A",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Gerenciamento de Estoque (Admin)",
    "Administrador",
    "Quero controlar o estoque de cupcakes disponíveis.",
    "Produto esgotado deve sumir da vitrine.",
    "CA#1 Admin pode alterar a quantidade disponível.",
    "RN#1 Cupcakes com estoque zerado não aparecem para clientes.",
    "RN F#1 Atualização de estoque refletida em até 5 segundos.",
    "A",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Notificações Push",
    "Cliente",
    "Quero receber alertas sobre o andamento do meu pedido.",
    "Incluir promoções futuras também.",
    "CA#1 Notificações recebidas em tempo real.",
    "RN#1 Notificações não podem conter dados sensíveis.",
    "RN F#1 Tempo de entrega da notificação < 10s.",
    "B",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Promoções e Cupons",
    "Cliente",
    "Quero aplicar cupons de desconto na compra.",
    "Devem ter validade e regras claras.",
    "CA#1 Campo para digitar e validar cupom. CA#2 Desconto aplicado corretamente no total.",
    "RN#1 Cada cupom pode ter uso limitado.",
    "RN F#1 Validação de cupom em até 2s.",
    "A",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Favoritar Cupcakes",
    "Cliente",
    "Quero poder favoritar cupcakes para acessar depois.",
    "Deve haver seção “Favoritos” no app.",
    "CA#1 Cupcake favoritado aparece na lista pessoal.",
    "RN#1 Cupcakes removidos do cardápio somem dos favoritos.",
    "RN F#1 Interação em até 1s.",
    "B",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Recuperação de Senha",
    "Cliente",
    "Quero redefinir minha senha caso esqueça.",
    "Via e-mail.",
    "CA#1 Cliente recebe link de redefinição.",
    "RN#1 Link expira em 24h.",
    "RN F#1 Envio do e-mail em até 1 minuto.",
    "A",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Perfil do Usuário",
    "Cliente",
    "Quero editar meus dados pessoais e senha.",
    "Dados atualizados devem ser salvos imediatamente.",
    "CA#1 Cliente pode editar nome, telefone e senha.",
    "RN#1 E-mail não pode ser alterado pelo cliente.",
    "RN F#1 Salvamento com resposta visual em até 2s.",
    "B",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Pesquisa de Cupcakes",
    "Cliente",
    "Quero pesquisar cupcakes pelo nome ou sabor.",
    "Campo de busca na vitrine.",
    "CA#1 Resultados relevantes são exibidos conforme digitação.",
    "RN#1 Busca deve desconsiderar acentos.",
    "RN F#1 Sugestões em tempo real.",
    "D",
    3
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Agendamento de Entrega",
    "Cliente",
    "Quero escolher a data e horário da entrega.",
    "Mostrar horários disponíveis por dia.",
    "CA#1 Cliente seleciona data e horário no checkout.",
    "RN#1 Agendamento permitido com 24h de antecedência mínima.",
    "RN F#1 Interface com calendário fluido.",
    "A",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Cancelamento de Pedido",
    "Cliente",
    "Quero cancelar meu pedido se ainda não saiu para entrega.",
    "Cancelamento com reembolso automático.",
    "CA#1 Cancelamento possível até o status 'Preparando'.",
    "RN#1 Pedido já em rota não pode ser cancelado.",
    "RN F#1 Cancelamento com resposta visual clara.",
    "A",
    5
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "História do usuário",
    "Estimativa em pontos",
    "Prioridade",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Cadastro de Cliente",
    "3",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Login de Cliente",
    "2",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Vitrine Online de Cupcakes",
    "5",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Detalhes do Produto",
    "3",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Carrinho de Compras",
    "5",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Checkout com Endereço de Entrega",
    "3",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Pagamento via Cartão",
    "8",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Histórico de Pedidos",
    "3",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Acompanhamento de Entrega",
    "8",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Avaliação de Pedido",
    "3",
    "C",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Cadastro de Cupcakes (Admin)",
    "5",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Gerenciamento de Estoque (Admin)",
    "5",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Notificações Push",
    "5",
    "B",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Promoções e Cupons",
    "5",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Favoritar Cupcakes",
    "3",
    "B",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Recuperação de Senha",
    "3",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Perfil do Usuário",
    "3",
    "B",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Pesquisa de Cupcakes",
    "3",
    "D",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Agendamento de Entrega",
    "5",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

INSERT INTO historias_usuario (titulo, requerente, acao, comentarios, criterios_aceitacao, regras_negocio, requisito_nao_funcional, prioridade, pontos_historia)
VALUES (
    "Cancelamento de Pedido",
    "5",
    "A",
    "",
    "",
    "",
    "",
    "",
    NULL
);

