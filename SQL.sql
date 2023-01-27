CREATE TABLE `cursos` (
  `id_curso` int PRIMARY KEY,
  `nome_curso` varchar(45),
  `categoria` varchar(20),
  `valor_curso` int,
  `duracao_curso` int
);

CREATE TABLE `turmas` (
  `numero_turma` int PRIMARY KEY,
  `registro_professor` int,
  `id_curso` int
);

CREATE TABLE `alunos` (
  `matricula_aluno` int PRIMARY KEY,
  `numero_turma` int,
  `nome_aluno` varchar(25),
  `cpf_aluno` int,
  `endereco_aluno` varchar(45),
  `telefone_aluno` varchar(11),
  `data_nascimento_aluno` datetime
);

CREATE TABLE `professores` (
  `registro_professor` int PRIMARY KEY,
  `nome_professor` varchar(45),
  `cpf_professor` int,
  `telefone_professor` varchar(11)
);

CREATE TABLE `notas` (
  `matricula_aluno` int PRIMARY KEY,
  `id_curso` int,
  `nota` int
);

ALTER TABLE `notas` ADD FOREIGN KEY (`matricula_aluno`) REFERENCES `alunos` (`matricula_aluno`);

ALTER TABLE `cursos` ADD FOREIGN KEY (`id_curso`) REFERENCES `turmas` (`id_curso`);

ALTER TABLE `alunos` ADD FOREIGN KEY (`numero_turma`) REFERENCES `turmas` (`numero_turma`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`registro_professor`) REFERENCES `professores` (`registro_professor`);

ALTER TABLE `notas` ADD FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);
