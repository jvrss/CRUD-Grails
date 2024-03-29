<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="dash" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="show-item" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="alert alert-primary" role="alert">
                    ${flash.message}
                </div>
            </g:if>
            <div class="form-group">
                <label for="quantidade">Quantidade</label>
                <input disabled type="number" name="quantidade" value="${item.quantidade}" class="form-control" id="quantidade" required/>
              </div>
              <div class="form-group">
                <label for="descricao">Descrição</label>
                <textarea disabled class="form-control" name="descricao" id="descricao" rows="3" required>${item.descricao}</textarea>
              </div>
            <g:form resource="${this.item}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-primary" action="edit" resource="${this.item}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
                    <input class="delete btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <button class="btn btn-primary" onclick="window.location.href = '${createLink(controller:"item")}'; return false;">Voltar</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
