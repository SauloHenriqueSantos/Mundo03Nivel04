
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Produtos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container"> <!-- Adicionar a classe container ao body -->

<h1>Lista de Produtos</h1>

<!-- Adicionar as classes btn, btn-primary e m-2 no link de inclus�o -->
<a href="ServletProdutoFC?acao=formIncluir" class="btn btn-primary m-2">Incluir Novo Produto</a>

<table class="table table-striped"> <!-- Adicionar as classes table e table-striped na tabela -->
    <thead class="table-dark"> <!-- Adicionar a classe table-dark ao thead -->
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Quantidade</th>
            <th>Pre�o</th>
            <th>A��es</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${produtos}" var="produto">
            <tr>
                <td>${produto.id}</td>
                <td>${produto.nome}</td>
                <td>${produto.quantidade}</td>
                <td>${produto.preco}</td>
                <td>
                    <!-- Adicionar as classes btn, btn-primary e btn-sm no link de altera��o -->
                    <a href="ServletProdutoFC?acao=alterar&id=${produto.id}" class="btn btn-primary btn-sm">Alterar</a>

                    <!-- Adicionar as classes btn, btn-danger e btn-sm no link de exclus�o -->
                    <a href="ServletProdutoFC?acao=excluir&id=${produto.id}" class="btn btn-danger btn-sm">Excluir</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>

