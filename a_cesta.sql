-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/03/2023 às 18:00
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `acesta`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairros`
--

CREATE TABLE `bairros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cidade` int(11) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `bairros`
--

INSERT INTO `bairros` (`id`, `nome`, `cidade`, `ativo`) VALUES
(1, 'Centro', 1, 'Sim'),
(2, '31 de Março', 1, 'Sim'),
(3, 'Aeroporto', 1, 'Sim'),
(4, 'Aparecida', 1, 'Sim'),
(5, 'Bairro dos Estados', 1, 'Sim'),
(6, 'São Francisco', 1, 'Sim'),
(7, '13 de Setembro', 1, 'Sim'),
(8, 'Calungá', 1, 'Sim'),
(9, 'Governador Aquilino Mota', 1, 'Sim'),
(10, 'São Vicente', 1, 'Sim'),
(11, 'Marechal Rondon', 1, 'Sim'),
(12, 'Caçari', 1, 'Sim'),
(13, 'Canarinho', 1, 'Sim'),
(14, 'Paraviana', 1, 'Sim'),
(15, 'São Pedro', 1, 'Sim'),
(16, 'Asa Branca', 1, 'Sim'),
(17, 'Alvorada', 1, 'Sim'),
(18, 'Professora Araceli Souto Maior', 1, 'Sim'),
(19, 'Bela Vista', 1, 'Sim'),
(20, 'Buritis', 1, 'Sim'),
(21, 'Caimbé', 1, 'Sim'),
(22, 'Cambará', 1, 'Sim'),
(23, 'Caranã', 1, 'Sim'),
(24, 'Centenário', 1, 'Sim'),
(25, 'Cinturão Verde', 1, 'Sim'),
(26, 'Jardim Equatorial', 1, 'Sim'),
(27, 'Senador Hélio Campos', 1, 'Sim'),
(28, 'Jardim Caranã', 1, 'Sim'),
(29, 'Jardim Primavera', 1, 'Sim'),
(30, 'Jardim Floresta', 1, 'Sim'),
(31, 'Jardim Tropical', 1, 'Sim'),
(32, 'Jóquei Clube', 1, 'Sim'),
(33, 'Liberdade', 1, 'Sim'),
(34, 'Murilo Teixeira', 1, 'Sim'),
(35, 'Mecejana', 1, 'Sim'),
(36, 'Nova Canaã', 1, 'Sim'),
(37, 'Nova Cidade', 1, 'Sim'),
(38, 'Operário', 1, 'Sim'),
(39, 'Pintolândia', 1, 'Sim'),
(40, 'Piscicultura', 1, 'Sim'),
(41, 'Pricumã', 1, 'Sim'),
(42, 'Raiar do Sol', 1, 'Sim'),
(43, 'Doutor Aírton Rocha', 1, 'Sim'),
(44, 'Doutor Silvio Botelho', 1, 'Sim'),
(45, 'Doutor Silvio Leite', 1, 'Sim'),
(46, 'Santa Luzia', 1, 'Sim'),
(47, 'Santa Tereza', 1, 'Sim'),
(48, 'Tancredo Neves', 1, 'Sim'),
(49, 'União', 1, 'Sim'),
(50, 'Olímpico', 1, 'Sim'),
(51, 'Laura Moreira', 1, 'Sim'),
(52, 'São Bento', 1, 'Sim'),
(53, 'Cidade Satélite', 1, 'Sim'),
(63, 'Sede', 11, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `nome_infor` varchar(150) DEFAULT NULL,
  `nomesocial` varchar(55) DEFAULT NULL,
  `sexo` varchar(2) NOT NULL,
  `racacor` int(11) NOT NULL,
  `etnia` int(11) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `tipodoc` varchar(55) DEFAULT NULL,
  `docnum` varchar(15) DEFAULT NULL,
  `docorgao` int(11) DEFAULT NULL,
  `docexpedicao` date DEFAULT NULL,
  `estadocivil` varchar(20) DEFAULT NULL,
  `natura` int(11) DEFAULT NULL,
  `nacional` int(11) DEFAULT NULL,
  `religiao` int(10) DEFAULT NULL,
  `escolaridade` varchar(15) DEFAULT NULL,
  `ensino` varchar(12) DEFAULT NULL,
  `pai` varchar(150) DEFAULT NULL,
  `mae` varchar(150) DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  `reservista` varchar(25) DEFAULT NULL,
  `clt` varchar(25) DEFAULT NULL,
  `cartaosus` varchar(25) DEFAULT NULL,
  `cartaovacina` varchar(25) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cidade` varchar(150) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `rua` varchar(500) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `redesocial` varchar(10) DEFAULT NULL,
  `descricaoredesocial` varchar(45) DEFAULT NULL,
  `localizacao` varchar(8) DEFAULT NULL,
  `moradia` varchar(8) DEFAULT NULL,
  `tipmorada` varchar(10) DEFAULT NULL,
  `tipconstrucao` varchar(10) DEFAULT NULL,
  `pisomorada` varchar(15) DEFAULT NULL,
  `agua` varchar(8) DEFAULT NULL,
  `luz` varchar(4) DEFAULT NULL,
  `lixo` varchar(4) DEFAULT NULL,
  `banheiro` varchar(15) DEFAULT NULL,
  `esgoto` varchar(8) DEFAULT NULL,
  `nrcomodos` int(11) DEFAULT NULL,
  `nrpessoas` int(11) DEFAULT NULL,
  `nrfamilia` int(11) DEFAULT NULL,
  `empregado` varchar(4) DEFAULT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `renda` decimal(10,2) DEFAULT NULL,
  `beneficio` varchar(4) DEFAULT NULL,
  `beneficiodescricao` varchar(30) DEFAULT NULL,
  `beneficiovalor` decimal(10,2) DEFAULT NULL,
  `nomeconjugue` varchar(100) DEFAULT NULL,
  `cpfconjugue` varchar(15) DEFAULT NULL,
  `datanascconjugue` date DEFAULT NULL,
  `naturalconjugue` int(11) DEFAULT NULL,
  `nacionalconjugue` int(11) DEFAULT NULL,
  `sexoconjugue` varchar(2) DEFAULT NULL,
  `racacorconjugue` int(11) DEFAULT NULL,
  `etniaconjugue` int(11) DEFAULT NULL,
  `paiconjugue` varchar(100) DEFAULT NULL,
  `maeconjugue` varchar(100) DEFAULT NULL,
  `escolaridadeconjugue` varchar(15) DEFAULT NULL,
  `ensinoconjugue` varchar(12) DEFAULT NULL,
  `emailconjugue` varchar(25) DEFAULT NULL,
  `redesocialconjugue` varchar(10) DEFAULT NULL,
  `descricaoredesocialconjugue` int(50) DEFAULT NULL,
  `telefoneconjugue` varchar(15) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `hora_cad` time NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `beneficiarios`
--

INSERT INTO `beneficiarios` (`id`, `nome`, `nome_infor`, `nomesocial`, `sexo`, `racacor`, `etnia`, `cpf`, `tipodoc`, `docnum`, `docorgao`, `docexpedicao`, `estadocivil`, `natura`, `nacional`, `religiao`, `escolaridade`, `ensino`, `pai`, `mae`, `datanasc`, `reservista`, `clt`, `cartaosus`, `cartaovacina`, `telefone`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `email`, `redesocial`, `descricaoredesocial`, `localizacao`, `moradia`, `tipmorada`, `tipconstrucao`, `pisomorada`, `agua`, `luz`, `lixo`, `banheiro`, `esgoto`, `nrcomodos`, `nrpessoas`, `nrfamilia`, `empregado`, `profissao`, `renda`, `beneficio`, `beneficiodescricao`, `beneficiovalor`, `nomeconjugue`, `cpfconjugue`, `datanascconjugue`, `naturalconjugue`, `nacionalconjugue`, `sexoconjugue`, `racacorconjugue`, `etniaconjugue`, `paiconjugue`, `maeconjugue`, `escolaridadeconjugue`, `ensinoconjugue`, `emailconjugue`, `redesocialconjugue`, `descricaoredesocialconjugue`, `telefoneconjugue`, `data_cad`, `hora_cad`, `foto`, `ativo`) VALUES
(1, 'Ana Jéssyca de Souza Mendes', 'ASD', 'asd', 'M', 1, 1, '046.746.723-41', 'Registro Geral', '36741', 1, '2023-03-10', NULL, 1, 1, 6, NULL, 'Completo', 'joao jose pereira', 'maria joana pereira', '2023-03-10', '', '', '', '', '(95) 99113-9073', 'Boa Vista', 'Cinturão Verde', 'Rua Provérbio', '311', '69312405', 'gene@lula', 'Não possui', '', 'Urbana', 'Casa', 'Própria', 'Alvenaria', 'Porcelanato', 'Rede Ger', 'Não', 'Sim', 'Sim', 'Tratado', 1, 1, 1, 'Não', '', '20.00', 'Não', '', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10', '12:11:56', '10-03-2023-12-11-56-81242570.jpg', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`, `ativo`) VALUES
(1, 'Boa Vista', 'Sim'),
(2, 'Alto Alegre', 'Sim'),
(3, 'Amajari', 'Sim'),
(4, 'Bonfim', 'Sim'),
(5, 'Cantá', 'Sim'),
(6, 'Caracaraí', 'Sim'),
(7, 'Caroebe', 'Sim'),
(8, 'Iracema', 'Sim'),
(9, 'Mucajai', 'Sim'),
(10, 'Normandia', 'Sim'),
(11, 'Pacaraima', 'Sim'),
(12, 'Rorainópolis', 'Sim'),
(13, 'São João da Baliza', 'Sim'),
(14, 'São Luiz', 'Sim'),
(15, 'Uiramutã', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `logo_rel` varchar(100) DEFAULT NULL,
  `email_adm` varchar(50) NOT NULL,
  `logs` varchar(5) NOT NULL,
  `dias_limpar_logs` int(11) NOT NULL,
  `relatorio_pdf` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `telefone`, `endereco`, `logo`, `favicon`, `logo_rel`, `email_adm`, `logs`, `dias_limpar_logs`, `relatorio_pdf`) VALUES
(1, 'CADASTRO SOCIAL', NULL, NULL, 'logo.png', 'favicon.ico', 'logo.jpg', 'administrador@gmail.com', 'Sim', 40, 'pdf');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `id` int(11) NOT NULL,
  `idben` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `racacor` int(11) NOT NULL,
  `etnia` int(11) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `tipodoc` varchar(55) DEFAULT NULL,
  `docnum` varchar(15) DEFAULT NULL,
  `docorgao` int(11) DEFAULT NULL,
  `docexpedicao` date DEFAULT NULL,
  `pcd` varchar(15) DEFAULT NULL,
  `parentesco` varchar(40) DEFAULT NULL,
  `natura` int(11) DEFAULT NULL,
  `nacional` int(11) DEFAULT NULL,
  `religiao` int(10) DEFAULT NULL,
  `escolaridade` varchar(15) DEFAULT NULL,
  `ensino` varchar(12) DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  `reservista` varchar(25) DEFAULT NULL,
  `clt` varchar(25) DEFAULT NULL,
  `cartaosus` varchar(25) DEFAULT NULL,
  `cartaovacina` varchar(25) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `redesocial` varchar(10) DEFAULT NULL,
  `descricaoredesocial` varchar(45) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `hora_cad` time NOT NULL,
  `id_usr_resp` int(11) DEFAULT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `dependentes`
--

INSERT INTO `dependentes` (`id`, `idben`, `nome`, `sexo`, `racacor`, `etnia`, `cpf`, `tipodoc`, `docnum`, `docorgao`, `docexpedicao`, `pcd`, `parentesco`, `natura`, `nacional`, `religiao`, `escolaridade`, `ensino`, `datanasc`, `reservista`, `clt`, `cartaosus`, `cartaovacina`, `telefone`, `email`, `redesocial`, `descricaoredesocial`, `data_cad`, `hora_cad`, `id_usr_resp`, `ativo`) VALUES
(5, 1, 'Antonio Vasconcelos', 'F', 1, 1, '222.222.222-22', 'Registro Geral', '', 1, '0000-00-00', 'Não possui', 'Enteado', 1, 1, 1, 'Fundamental', 'Completo', '2023-03-09', '', '', '', '', '(95) 98408-7126', 'discipulandorr@gmail.com', 'Não possui', '', '0000-00-00', '00:00:00', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `uf` varchar(4) NOT NULL,
  `pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `estado`
--

INSERT INTO `estado` (`id`, `nome`, `uf`, `pais`) VALUES
(1, 'Roraima', 'RR', 1),
(2, 'Acre', 'AC', 1),
(3, 'Alagoas', 'AL', 1),
(4, 'Amazonas', 'AM', 1),
(5, 'Amapá', 'AP', 1),
(6, 'Bahia', 'BA', 1),
(7, 'Ceará', 'CE', 1),
(8, 'Distrito Federal', 'DF', 1),
(9, 'Espírito Santo', 'ES', 1),
(10, 'Goiás', 'GO', 1),
(11, 'Maranhão', 'MA', 1),
(12, 'Minas Gerais', 'MG', 1),
(13, 'Mato Grosso do Sul', 'MS', 1),
(14, 'Mato Grosso', 'MT', 1),
(15, 'Pará', 'PA', 1),
(16, 'Paraíba', 'PB', 1),
(17, 'Pernambuco', 'PE', 1),
(18, 'Piauí', 'PI', 1),
(19, 'Paraná', 'PR', 1),
(20, 'Rio de Janeiro', 'RJ', 1),
(20, 'Rio Grande do Norte', 'RN', 1),
(21, 'Rondônia', 'RO', 1),
(22, 'Acre', 'AC', 1),
(23, 'Rio Grande do Sul', 'RS', 1),
(24, 'Santa Catarina', 'SC', 1),
(25, 'Sergipe', 'SE', 1),
(26, 'São Paulo', 'SP', 1),
(27, 'Tocantins', 'TO', 1),
(28, 'Outros', 'XX', 255);

-- --------------------------------------------------------

--
-- Estrutura para tabela `etnia`
--

CREATE TABLE `etnia` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `etnia`
--

INSERT INTO `etnia` (`id`, `nome`) VALUES
(1, 'Não possui'),
(2, 'Macuxi'),
(3, 'Wapichana'),
(4, 'Wai Wai'),
(5, 'Yanomami'),
(6, 'Patamona'),
(7, 'Saprá'),
(8, 'Taurepang'),
(9, 'Waimiri-Atroari'),
(10, 'Pirititi'),
(11, 'YeKuana'),
(12, 'Ingariko');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `tabela` varchar(30) NOT NULL,
  `acao` varchar(35) NOT NULL,
  `usuario` int(11) NOT NULL,
  `id_reg` int(11) NOT NULL,
  `descricao` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`id`, `data`, `hora`, `tabela`, `acao`, `usuario`, `id_reg`, `descricao`) VALUES
(965, '2023-02-27', '16:52:12', 'usuarios', 'logout', 1, 0, 'logout'),
(966, '2023-02-27', '17:16:04', 'usuarios', 'logout', 1, 0, 'logout'),
(967, '2023-02-28', '09:52:37', 'usuarios', 'logout', 1, 0, 'logout'),
(968, '2023-02-28', '09:53:06', 'usuarios', 'logout', 1, 0, 'logout'),
(969, '2023-02-28', '09:59:46', 'usuarios', 'logout', 1, 0, 'logout'),
(970, '2023-02-28', '10:12:12', 'usuarios', 'logout', 1, 0, 'logout'),
(971, '2023-02-28', '10:12:36', 'usuarios', 'logout', 1, 0, 'logout'),
(972, '2023-02-28', '10:13:16', 'usuarios', 'logout', 1, 0, 'logout'),
(973, '2023-02-28', '10:13:43', 'usuarios', 'logout', 1, 0, 'logout'),
(974, '2023-02-28', '10:19:56', 'usuarios', 'logout', 1, 0, 'logout'),
(975, '2023-02-28', '10:22:26', 'usuarios', 'logout', 1, 0, 'logout'),
(976, '2023-02-28', '14:20:12', 'usuarios', 'logout', 1, 0, 'logout'),
(977, '2023-02-28', '16:19:06', 'usuarios', 'logout', 1, 0, 'logout'),
(978, '2023-03-06', '14:03:25', 'usuarios', 'logout', 1, 0, 'logout');

-- --------------------------------------------------------

--
-- Estrutura para tabela `orgaoemissor`
--

CREATE TABLE `orgaoemissor` (
  `id` int(11) NOT NULL,
  `orgao` varchar(150) DEFAULT NULL,
  `sigla` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `orgaoemissor`
--

INSERT INTO `orgaoemissor` (`id`, `orgao`, `sigla`) VALUES
(1, 'Secretaria de Segurança Pública', 'SSP'),
(2, 'Advocacia Geral da União', 'AGU '),
(3, 'Agência Nacional de Aviação Civil', 'ANAC '),
(4, 'Clube de Aeronáutica', 'CAER '),
(5, 'Conselho de Arquitetura e Urbanismo', 'CAU '),
(6, 'Corpo de Bombeiro Militar', 'CBM '),
(7, 'Conselho Federal Administração', 'CFA '),
(8, 'Conselho Federal de Biblioteconomia', 'CFB '),
(9, 'Conselho Federal de Biologia', 'CFBIO '),
(10, 'Conselho Federal de Biomedicina', 'CFBM '),
(11, 'Conselho Federal de Contabilidade', 'CFC '),
(12, 'Conselho Federal de Serviço Social', 'CFESS '),
(13, 'Conselho Regional de Farmácia', 'CFF '),
(14, 'Conselho Federal de Fonoaudiologia', 'CFFA '),
(15, 'Conselho Federal de Medicina', 'CFM '),
(16, 'Conselho Federal de Medicina Veterinária', 'CFMV '),
(17, 'Conselho Federal de Nutrição', 'CFN '),
(18, 'Conselho Federal de Odontologia', 'CFO '),
(19, 'Conselho Federal de Psicologia', 'CFP '),
(20, 'Conselho Regional de Química', 'CFQ '),
(21, 'Conselho Federal dos Técnicos Industriais', 'CFT '),
(22, 'Conselho Federal dos Técnicos Agrícolas', 'CFTA '),
(23, 'Coordenação Geral de Privilégios e Imunidades', 'CGPI '),
(24, 'Coordenadoria Geral de Polícia Marítima, Aeronáutica e de Fronteiras', 'CGPMAF '),
(25, 'Centro de Inteligência da Polícia Civil', 'CIPC '),
(26, 'Conselho Nacional de Imigração', 'CNIG '),
(27, 'Confederação Nacional do Transporte', 'CNT '),
(28, 'Confederação Nacional de Vigilantes & Prestadores de Serviços', 'CNTV '),
(29, 'Conselho Federal de Corretores de Imóveis', 'COFECI '),
(30, 'Conselho Federal de Economia', 'COFECON '),
(31, 'Conselho Federal de Museologia', 'COFEM '),
(32, 'Conselho Federal de Enfermagem', 'COFEN '),
(33, 'Conselho Regional de Fisioterapia e Terapia Ocupacional', 'COFFITO '),
(34, 'Comando da Aeronáutica', 'COMAER '),
(35, 'Conselho Federal de Estatística', 'CONFE '),
(36, 'Conselho Federal de Engenharia e Agronomia', 'CONFEA '),
(37, 'Conselho Federal de Educação Física', 'CONFEF '),
(38, 'Conselho Federal dos Representantes Comerciais', 'CONFERE '),
(39, 'Conselho Regional de Estatística', 'CONRE '),
(40, 'Conselho Federal de Profissionais de Relações Públicas', 'CONRERP '),
(41, 'Conselho Regional dos Representantes Comerciais', 'CORE '),
(42, 'Conselho Regional de Economia', 'CORECON '),
(43, 'Conselho Regional de Museologia', 'COREM '),
(44, 'Conselho Regional de Enfermagem', 'COREN '),
(45, 'Conselho Regional de Administração', 'CRA '),
(46, 'Centro de Referência de Assistência Social', 'CRAS '),
(47, 'Conselho Regional de Biblioteconomia', 'CRB '),
(48, 'Conselho Regional de Biologia', 'CRBIO '),
(49, 'Conselho Regional de Biomedicina', 'CRBM '),
(50, 'Conselho Regional de Contabilidade', 'CRC '),
(51, 'Conselho Regional de Engenharia e Agronomia', 'CREA '),
(52, 'Conselho Regional de Corretores de Imóveis', 'CRECI '),
(53, 'Conselho Regional de Educação Física', 'CREF '),
(54, 'Conselho Regional de Fisioterapia e Terapia Ocupacional', 'CREFITO '),
(55, 'Conselho Regional de Serviço Social', 'CRESS '),
(56, 'Conselho Regional de Farmácia', 'CRF '),
(57, 'Conselho Regional de Fonoaudiologia', 'CRFA '),
(58, 'Conselho Regional de Medicina', 'CRM '),
(59, 'Conselho Regional de Medicina Veterinária', 'CRMV '),
(60, 'Conselho Regional de Nutrição', 'CRN '),
(61, 'Conselho Regional de Odontologia', 'CRO '),
(62, 'Conselho Regional de Psicologia', 'CRP '),
(63, 'Conselho Regional de Profissionais de Relações Públicas', 'CRPRE '),
(64, 'Conselho Regional de Química', 'CRQ '),
(65, 'Conselho Regional dos Técnicos Industriais', 'CRT '),
(66, 'Conselho Regional de Técnicos de Administração', 'CRTA '),
(67, 'Carteira de Trabalho e Previdência Social', 'CTPS '),
(68, 'Cartório Civil', 'CV '),
(69, 'Delegacia de Polícia de Imigração', 'DELEMIG '),
(70, 'Departamento Estadual de Trânsito', 'DETRAN '),
(71, 'Diretoria Geral da Polícia Civil', 'DGPC '),
(72, 'Diretoria de Identificação Civil', 'DIC '),
(73, 'Diretoria de Identificação Civil e Criminal', 'DICC '),
(74, 'Diretoria Executiva', 'DIREX '),
(75, 'Departamento de Polícia Federal', 'DPF '),
(76, 'Divisão de Polícia Marítima, Aérea e de Fronteiras', 'DPMAF '),
(77, 'Departamento de Polícia Técnica Geral', 'DPT '),
(78, 'Departamento de Polícia Técnico Científica', 'DPTC '),
(79, 'Delegacia Regional Executiva', 'DREX '),
(80, 'Delegacia Regional do Trabalho', 'DRT '),
(81, 'Exército Brasileiro', 'EB '),
(82, 'Força Aérea Brasileira', 'FAB '),
(83, 'Federação Nacional dos Jornalistas', 'FENAJ '),
(84, 'Fundo de Garantia do Tempo de Serviço', 'FGTS '),
(85, 'Fundação Instituto de Pesquisas Econômicas', 'FIPE '),
(86, 'Fundação Lyndolpho Silva', 'FLS '),
(87, 'Fundação Nacional do Índio', 'FUNAI '),
(88, 'Gerência de Estado de Justiça, Segurança Pública e Cidadania', 'GEJSP '),
(89, 'Gerência de Estado de Justiça, Segurança Pública e Cidadania', 'GEJSPC '),
(90, 'Gerência de Estado de Justiça, Segurança Pública e Cidadania', 'GEJUSPC '),
(91, 'Gerência de Estado de Segurança Pública', 'GESP '),
(92, 'Governo do Estado de Goiás', 'GOVGO '),
(93, 'Carteira de Identidade Classista', 'I CLA '),
(94, 'Instituto de Polícia Científica', 'ICP '),
(95, 'Instituto de Identificação Dr. Aroldo Mendes Paiva', 'IDAMP '),
(96, 'Instituto Félix Pacheco', 'IFP '),
(97, 'Instituto Geral de Perícias', 'IGP '),
(98, 'Instituto de Identificação Aderson Conceição de Melo', 'IIACM '),
(99, 'Instituto de Identificação Civil e Criminal', 'IICC '),
(100, 'Instituto de Identificação Civil e Criminal Engrácia da Costa Francisco', 'IICCECF '),
(101, 'Instituto de Identificação Carlos Menezes', 'IICM'),
(102, 'Instituto de Identificação Gonçalo Pereira', 'IIGP'),
(103, 'Instituto de Identificação João de Deus Martins', 'IIJDM'),
(104, 'Instituto de Identificação da Polícia Civil', 'IIPC'),
(105, 'Instituto de Identificação Pedro Mello', 'IIPC'),
(106, 'Instituto de Identificação Ricardo Gumbleton Daunt', 'IIRGD '),
(107, 'Instituto de Identificação Raimundo Hermínio de Melo', 'IIRHM '),
(108, 'Instituto de Identificação Tavares Buril', 'IITB'),
(109, 'Instituto Médico Legal', 'IML'),
(110, 'Instituto Nacional de Identificação', 'INI'),
(111, 'Instituto Pereira Faustino', 'IPF'),
(112, 'Instituto Técnico Científico de Perícia', 'ITCP'),
(113, 'Instituto Técnico Científico de Perícia', 'ITEP'),
(114, 'Ministério da Aeronáutica', 'MAER'),
(115, 'Marinha do Brasil', 'MB'),
(116, 'Ministério da Defesa', 'MD'),
(117, 'Ministério da Cidadania', 'MDS'),
(118, 'Ministério da Educação e Cultura', 'MEC'),
(119, 'Ministério do Exército', 'MEX'),
(120, 'Ministério da Defesa', 'MINDEF '),
(121, 'Ministério da Justiça', 'MJ'),
(122, 'Ministério da Marinha', 'MM'),
(123, 'Ministério da Marinha', 'MMA'),
(124, 'Ministério da Previdência e Assistência Social', 'MPAS'),
(125, 'Ministério Público Estadual', 'MPE'),
(126, 'Ministério Público Federal', 'MPF'),
(127, 'Ministério Público do Trabalho', 'MPT'),
(128, 'Ministério das Relações Exteriores', 'MRE'),
(129, 'Ministério do Trabalho', 'MT'),
(130, 'Ministério da Economia', 'MTE'),
(131, 'Ministério do Trabalho e Previdência Social', 'MTPS'),
(132, 'Núcleo de Polícia de Imigração', 'NUMIG'),
(133, 'Ordem dos Advogados do Brasil', 'OAB'),
(134, 'Ordens dos Músicos do Brasil', 'OMB'),
(135, 'Polícia Civil', 'PC'),
(136, 'Polícia Federal', 'PF'),
(137, 'Procuradoria Geral da Fazenda Nacional', 'PGFN'),
(138, 'Polícia Militar', 'PM'),
(139, 'Perícia Oficial e Identificação Técnica', 'POLITEC'),
(140, 'Polícia Rodoviária Federal', 'PRF'),
(141, 'Polícia Tecnico Científica', 'PTC'),
(142, 'Secretaria de Estado da Casa Civil', 'SCC'),
(143, 'Secretaria Coordenadora de Justiça e Defesa Social', 'SCJDS'),
(144, 'Secretaria de Defesa Social', 'SDS'),
(145, 'Secretaria de Estado da Casa Civil', 'SECC'),
(146, 'Secretaria de Estado da Casa Civil e Desenvolvimento Econômico', 'SECCDE '),
(147, 'Secretaria de Estado da Defesa Social', 'SEDS'),
(148, 'Secretaria de Estado da Segurança Pública e da Defesa Social', 'SEGUP'),
(149, 'Secretaria de Estado de Justiça e Segurança Pública', 'SEJSP'),
(150, 'Secretaria de Estado da Justica', 'SEJUC'),
(151, 'Secretaria de Estado de Justiça e Segurança Pública', 'SEJUSP '),
(152, 'Secretaria de Estado da Polícia Civil', 'SEPC '),
(153, 'Secretaria de Estado da Segurança', 'SES '),
(154, 'Secretaria de Estado da Segurança e Cidadania', 'SESC '),
(155, 'Secretaria de Estado da Segurança, Defesa e Cidadania', 'SESDC '),
(156, 'Secretaria de Estado da Segurança, Defesa e Cidadania', 'SESDEC '),
(157, 'Secretaria Estadual de Segurança', 'SESEG '),
(158, 'Secretaria de Estado da Segurança Pública', 'SESP '),
(159, 'Secretaria de Estado da Segurança Pública e Administração Penitenciária', 'SESPAP '),
(160, 'Secretaria de Estado de Segurança Publica e Defesa do Cidadão', 'SESPDC '),
(161, 'Secretaria de Estado de Segurança Pública e Defesa Social', 'SESPDS '),
(162, 'Superintendência Geral de Polícia Civil', 'SGPC '),
(163, 'Superintendência Geral de Polícia Judiciária', 'SGPJ '),
(164, 'Serviço de Identificação da Marinha', 'SIM '),
(165, 'Secretaria da Justiça', 'SJ '),
(166, 'Secretaria da Justiça e dos Direitos Humanos', 'SJCDH'),
(167, 'Secretaria Coordenadora de Justiça e Defesa Social', 'SJDS'),
(168, 'Secretaria da Justiça e Segurança', 'SJS'),
(169, 'Secretaria da Justiça do Trabalho e Cidadania', 'SJTC'),
(170, 'Secretaria da Justiça do Trabalho e Segurança', 'SJTS'),
(171, 'Secretaria Nacional de Justiça / Departamento de Estrangeiros', 'SNJ'),
(172, 'Serviço de Polícia Marítima, Aérea e de Fronteiras', 'SPMAF'),
(173, 'Secretaria de Polícia Técnico Científica', 'SPTC'),
(174, 'Superintendência Regional do Departamento de Polícia Federal', 'SRDPF'),
(175, 'Receita Federal', 'SRF'),
(176, 'Superintendência Regional do Trabalho', 'SRTE'),
(177, 'Secretaria da Segurança, Defesa e Cidadania', 'SSDC'),
(178, 'Secretaria da Segurança e da Defesa Social', 'SSDS'),
(179, 'Secretaria de Segurança e Informações', 'SSI'),
(180, 'Academia Brasileira de Neurocirurgia', 'ABNC'),
(181, 'Secretaria de Segurança Pública e Coordenadoria Geral de Perícias', 'SSPCG'),
(182, 'Secretaria de Segurança Pública e Defesa do Cidadão', 'SSPDC'),
(183, 'Secretaria de Segurança Pública e Defesa Social', 'SSPDS '),
(184, 'Secretaria de Segurança Pública Polícia Civil', 'SSPPC'),
(185, 'Superintendência de Seguros Privados', 'SUSEP '),
(186, 'Superintendência dos Serviços Penitenciários', 'SUSEPE '),
(187, 'Tribunal de Justiça', 'TJ'),
(188, 'Tribunal Arbitral e Mediação dos Estados Brasileiros', 'TJAEM '),
(189, 'Tribunal Regional Eleitoral', 'TRE'),
(190, 'Tribunal Regional Federal', 'TRF'),
(191, 'Tribunal Superior Eleitoral', 'TSE'),
(192, 'Orgão Estrangeiro', 'XXX'),
(193, 'Outro', 'ZZZ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sigla` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `paises`
--

INSERT INTO `paises` (`id`, `nome`, `sigla`) VALUES
(1, 'Brasil', 'BR'),
(2, 'Afeganistão', 'AF'),
(3, 'Albânia', 'AL'),
(4, 'Argélia', 'DZ'),
(5, 'Samoa Americana', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antártida', 'AQ'),
(10, 'Antigua e Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armênia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Austrália', 'AU'),
(15, 'Áustria', 'AT'),
(16, 'Azerbaijão', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrein', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Bélgica', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermudas', 'BM'),
(26, 'Butão', 'BT'),
(27, 'Bolívia', 'BO'),
(28, 'Bósnia-herzegovina', 'BA'),
(29, 'Botsuana', 'BW'),
(30, 'Bouvet', 'BV'),
(31, 'Território Britânico do Oceano Indico', 'IO'),
(32, 'Brunei', 'BN'),
(33, 'Bulgária', 'BG'),
(34, 'Burkina Faso', 'BF'),
(35, 'Burundi', 'BI'),
(36, 'Camboja', 'KH'),
(37, 'Camarões', 'CM'),
(38, 'Canada', 'CA'),
(39, 'Cabo Verde', 'CV'),
(40, 'Cayman', 'KY'),
(41, 'Republica Centro-Africana', 'CF'),
(42, 'Chade', 'TD'),
(43, 'Chile', 'CL'),
(44, 'China', 'CN'),
(45, 'Christmas', 'CX'),
(46, 'Cocos (Keeling)', 'CC'),
(47, 'Colômbia', 'CO'),
(48, 'Comores', 'KM'),
(49, 'Congo', 'CG'),
(50, 'República Democrática do Congo', 'CD'),
(51, 'Cook', 'CK'),
(52, 'Costa Rica', 'CR'),
(53, 'Costa do Marfim', 'CI'),
(54, 'Croácia (Republica da)', 'HR'),
(55, 'Cuba', 'CU'),
(56, 'Chipre', 'CY'),
(57, 'Tcheca', 'CZ'),
(58, 'Dinamarca', 'DK'),
(59, 'Djibuti', 'DJ'),
(60, 'Dominica', 'DM'),
(61, 'Republica Dominicana', 'DO'),
(62, 'Timor Leste', 'TL'),
(63, 'Equador', 'EC'),
(64, 'Egito', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Guine-Equatorial', 'GQ'),
(67, 'Eritreia', 'ER'),
(68, 'Estônia', 'EE'),
(69, 'Etiópia', 'ET'),
(70, 'Falkland (Ilhas Malvinas)', 'FK'),
(71, 'Feroe', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finlândia', 'FI'),
(74, 'Franca', 'FR'),
(75, 'Guiana francesa', 'GF'),
(76, 'Polinésia Francesa', 'PF'),
(77, 'Terras Austrais e Antárticas Francesas', 'TF'),
(78, 'Gabão', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Alemanha', 'DE'),
(82, 'Gana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Grécia', 'GR'),
(85, 'Groenlândia', 'GL'),
(86, 'Granada', 'GD'),
(87, 'Guadalupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guine', 'GN'),
(91, 'Guine-Bissau', 'GW'),
(92, 'Guiana', 'GY'),
(93, 'Haiti', 'HT'),
(94, 'Ilha Heard e Ilhas McDonald', 'HM'),
(95, 'Vaticano', 'VA'),
(96, 'Honduras', 'HN'),
(97, 'Hong Kong', 'HK'),
(98, 'Hungria', 'HU'),
(99, 'Islândia', 'IS'),
(100, 'Índia', 'IN'),
(101, 'Indonésia', 'ID'),
(102, 'Ira', 'IR'),
(103, 'Iraque', 'IQ'),
(104, 'Irlanda', 'IE'),
(105, 'Israel', 'IL'),
(106, 'Itália', 'IT'),
(107, 'Jamaica', 'JM'),
(108, 'Japão', 'JP'),
(109, 'Jordânia', 'JO'),
(110, 'Cazaquistão', 'KZ'),
(111, 'Quênia', 'KE'),
(112, 'Kiribati', 'KI'),
(113, 'Coreia do Norte', 'KP'),
(114, 'Coreia do Sul', 'KR'),
(115, 'Kuwait', 'KW'),
(116, 'Quirguiz', 'KG'),
(117, 'Laos', 'LA'),
(118, 'Letônia', 'LV'),
(119, 'Líbano', 'LB'),
(120, 'Lesoto', 'LS'),
(121, 'Libéria', 'LR'),
(122, 'Líbia', 'LY'),
(123, 'Liechtenstein', 'LI'),
(124, 'Lituânia', 'LT'),
(125, 'Luxemburgo', 'LU'),
(126, 'Macau', 'MO'),
(127, 'Macedônia do Norte', 'MK'),
(128, 'Madagascar', 'MG'),
(129, 'Malavi', 'MW'),
(130, 'Malásia', 'MY'),
(131, 'Maldivas', 'MV'),
(132, 'Mali', 'ML'),
(133, 'Malta', 'MT'),
(134, 'Marshall', 'MH'),
(135, 'Martinica', 'MQ'),
(136, 'Mauritânia', 'MR'),
(137, 'Mauricio', 'MU'),
(138, 'Mayotte (Ilhas Francesas)', 'YT'),
(139, 'México', 'MX'),
(140, 'Micronesia', 'FM'),
(141, 'Moldávia', 'MD'),
(142, 'Mônaco', 'MC'),
(143, 'Mongólia', 'MN'),
(144, 'Montserrat', 'MS'),
(145, 'Marrocos', 'MA'),
(146, 'Moçambique', 'MZ'),
(147, 'Mianmar (Birmânia)', 'MM'),
(148, 'Namíbia', 'NA'),
(149, 'Nauru', 'NR'),
(150, 'Nepal', 'NP'),
(151, 'Países Baixos (Holanda)', 'NL'),
(152, 'Nova Caledonia', 'NC'),
(153, 'Nova Zelândia', 'NZ'),
(154, 'Nicarágua', 'NI'),
(155, 'Níger', 'NE'),
(156, 'Nigéria', 'NG'),
(157, 'Niue', 'NU'),
(158, 'Norfolk', 'NF'),
(159, 'Marianas do Norte', 'MP'),
(160, 'Noruega', 'NO'),
(161, 'Oma', 'OM'),
(162, 'Paquistão', 'PK'),
(163, 'Palau', 'PW'),
(164, 'Panamá', 'PA'),
(165, 'Papua Nova Guine', 'PG'),
(166, 'Paraguai', 'PY'),
(167, 'Peru', 'PE'),
(168, 'Filipinas', 'PH'),
(169, 'Pitcairn', 'PN'),
(170, 'Polônia', 'PL'),
(171, 'Portugal', 'PT'),
(172, 'Porto Rico', 'PR'),
(173, 'Catar', 'QA'),
(174, 'Reunião', 'RE'),
(175, 'Romênia', 'RO'),
(176, 'Rússia', 'RU'),
(177, 'Ruanda', 'RW'),
(178, 'São Cristovão e Neves', 'KN'),
(179, 'Santa Lucia', 'LC'),
(180, 'São Vicente e Granadinas', 'VC'),
(181, 'Samoa', 'WS'),
(182, 'San Marino', 'SM'),
(183, 'São Tome e Príncipe', 'ST'),
(184, 'Arábia Saudita', 'SA'),
(185, 'Senegal', 'SN'),
(186, 'Seychelles', 'SC'),
(187, 'Serra Leoa', 'SL'),
(188, 'Cingapura', 'SG'),
(189, 'Eslovaca', 'SK'),
(190, 'Eslovênia', 'SI'),
(191, 'Salomão', 'SB'),
(192, 'Somalia', 'SO'),
(193, 'África do Sul', 'ZA'),
(194, 'Ilhas Geórgia do Sul e Sandwich do Sul', 'GS'),
(195, 'Espanha', 'ES'),
(196, 'Sri Lanka', 'LK'),
(197, 'Santa Helena', 'SH'),
(198, 'São Pedro e Miquelon', 'PM'),
(199, 'Sudão', 'SD'),
(200, 'Suriname', 'SR'),
(201, 'Svalbard e Jan Mayen', 'SJ'),
(202, 'Eswatini', 'SZ'),
(203, 'Suécia', 'SE'),
(204, 'Suíça', 'CH'),
(205, 'Síria', 'SY'),
(206, 'Formosa (Taiwan)', 'TW'),
(207, 'Tadjiquistao', 'TJ'),
(208, 'Tanzânia', 'TZ'),
(209, 'Tailândia', 'TH'),
(210, 'Togo', 'TG'),
(211, 'Toquelau', 'TK'),
(212, 'Tonga', 'TO'),
(213, 'Trinidad e Tobago', 'TT'),
(214, 'Tunísia', 'TN'),
(215, 'Turquia', 'TR'),
(216, 'Turcomenistão', 'TM'),
(217, 'Turcas e Caicos', 'TC'),
(218, 'Tuvalu', 'TV'),
(219, 'Uganda', 'UG'),
(220, 'Ucrânia', 'UA'),
(221, 'Emirados Árabes Unidos', 'AE'),
(222, 'Reino Unido', 'GB'),
(223, 'Estados Unidos', 'US'),
(224, 'Ilhas Menores Distantes dos Estados Unidos', 'UM'),
(225, 'Uruguai', 'UY'),
(226, 'Uzbequistão', 'UZ'),
(227, 'Vanuatu', 'VU'),
(228, 'Venezuela', 'VE'),
(229, 'Vietnã', 'VN'),
(230, 'Ilhas Virgens (Britânicas)', 'VG'),
(231, 'Ilhas Virgens (E.U.A.)', 'VI'),
(232, 'Wallis e Futuna', 'WF'),
(233, 'Saara Ocidental', 'EH'),
(234, 'Iémen', 'YE'),
(235, 'Iugoslávia', 'YU'),
(236, 'Zâmbia', 'ZM'),
(237, 'Zimbabue', 'ZW'),
(238, 'Guernsey', 'GG'),
(239, 'Jersey', 'JE'),
(240, 'Man', 'IM'),
(241, 'Montenegro', 'ME'),
(242, 'Republika Srbija', 'RS'),
(243, 'Sudao do Sul', 'SS'),
(244, 'Zona do Canal do Panamá', 'NULL'),
(245, 'Palestina', 'PS'),
(246, 'Aland', 'AX'),
(247, 'Curaçao', 'CW'),
(248, 'São Martinho França', 'SM'),
(249, 'Bonaire', 'AN'),
(250, 'Antartica', 'AQ'),
(251, 'Ilha Herad e Ilhas Macdonald', 'AU'),
(252, 'São Bartolomeu', 'FR'),
(253, 'São Martinho Holanda', 'SM'),
(254, 'Terras Austrais e Antárcticas Francesas', 'TF'),
(255, 'Outros', 'XX');

-- --------------------------------------------------------

--
-- Estrutura para tabela `racacor`
--

CREATE TABLE `racacor` (
  `id` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `racacor`
--

INSERT INTO `racacor` (`id`, `nome`) VALUES
(1, 'Pardo'),
(2, 'Negro'),
(3, 'Branco'),
(4, 'Indígena'),
(5, 'Amarelo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `religiao`
--

CREATE TABLE `religiao` (
  `id` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `religiao`
--

INSERT INTO `religiao` (`id`, `nome`) VALUES
(1, 'Evangélica'),
(2, 'Católico'),
(3, 'Budismo'),
(4, 'Espírita'),
(5, 'Umbanda'),
(6, 'Hindu'),
(7, 'Eslamismo'),
(8, 'Judeu'),
(9, 'Candomblé'),
(10, 'Não possui');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `etnia`
--
ALTER TABLE `etnia`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orgaoemissor`
--
ALTER TABLE `orgaoemissor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `racacor`
--
ALTER TABLE `racacor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `religiao`
--
ALTER TABLE `religiao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `beneficiarios`
--
ALTER TABLE `beneficiarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `dependentes`
--
ALTER TABLE `dependentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `etnia`
--
ALTER TABLE `etnia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;

--
-- AUTO_INCREMENT de tabela `orgaoemissor`
--
ALTER TABLE `orgaoemissor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT de tabela `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT de tabela `racacor`
--
ALTER TABLE `racacor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `religiao`
--
ALTER TABLE `religiao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
