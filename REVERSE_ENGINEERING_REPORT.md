# REVERSE_ENGINEERING_REPORT — dk-medcom-carecommunication

## A. Diagnóstico geral

### Arquitetura identificada
Implementation Guide (IG) FHIR baseado em SUSHI para Care Communication na Dinamarca (MedCom). Estrutura:

- `input/fsh/*.fsh`: 20 arquivos FSH definindo perfis, extensões, invariantes e instâncias de exemplo
- `input/fsh/Helpers/`: pasta de helpers
- `sushi-config.yaml`: configuração do SUSHI na raiz (id: medcom.fhir.dk.carecommunication, versão 5.0.4, FHIR R4)
- `ig.ini`: configuração do IG publisher
- `.github/workflows/publish.yaml` e `.github/workflows/status-of-pr.yaml`: CI existentes (descobertos durante auditoria)
- Recursos publicados no simplifier.net e build.fhir.org

### Tecnologias e dependências
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- Dependências: hl7.fhir.dk.core 3.4.0, medcom.fhir.dk.core 3.0.1, medcom.fhir.dk.messaging 4.0.2, medcom.fhir.dk.terminology 2.0.1, medcom.fhir.dk.messagedefinitions 1.0.0
- Não há testes automatizados

### Estado de manutenção
Branch default: master. Repositório: https://github.com/medcomdk/dk-medcom-carecommunication. Histórico ativo com PRs recentes (ex: PR #186 já mergado, PR #189 aberto para correção de invariante UUID v4).

### Mecanismos de testes existentes
Nenhum teste automatizado encontrado.

### Limitações da investigação
- SUSHI não instalado; build do IG não executado.
- Issue #185 refere-se a validação de UUID v4; PR #189 aberto para correção do invariante.

## B. Problemas encontrados

| ID | Título | Severidade | Status | Localização |
|----|--------|------------|--------|-------------|
| REA-dkmedcom-002 | Nenhum teste automatizado para FSH/StructureDefinitions | P3 | CONFIRMADO | raiz do repo |
| REA-dkmedcom-003 | Issue #185: validação de UUID v4 não implementada | P2 | PROVÁVEL | issue #185, PR #189 aberto |

### Detalhes dos problemas confirmados

**REA-dkmedcom-002 (P3, CONFIRMADO)**: Não há testes automatizados para validar os perfis FHIR definidos em FSH nem as StructureDefinitions geradas.

### Detalhes do problema provável

**REA-dkmedcom-003 (P2, PROVÁVEL)**: Issue #185 reporta necessidade de validação de UUID v4. PR #189 está aberto corrigindo o regex do invariante `medcom-uuidv4` em `input/fsh/MedComCareCommunicationAttachmentID.fsh` para restringir corretamente a versão 4 e variante 8/9/a/b do UUID.

## C. Problemas recorrentes
Issue #184 (diretrizes clínicas) reportado em 02/11, ainda aberto. PR #186 (Vena_Vena.json) já fechado e mergado.

## D. Erros não documentados
Todos os itens da seção B são problemas não documentados anteriormente.

## E. Performance
Build estático de IG via SUSHI. Sem operações sensíveis a performance.

## F. Melhorias técnicas
- Adicionar testes FSH (REA-dkmedcom-002)
- Validar e fazer merge do PR #189 para correção do invariante UUID v4 (REA-dkmedcom-003)

## G. Plano de execução
Todas independentes e baixo risco.

## H. Resultado esperado
IG com testes automatizados e invariante UUID v4 corretamente validado.

**Ferramentas usadas:** git, gh, PowerShell, inspeção estática.  
**Limitação:** SUSHI não instalado. Issue #185/PR #189 requer verificação de compilação FSH.  
**Ambiente:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\dk-medcom-carecommunication` (clone do upstream, branch master).
