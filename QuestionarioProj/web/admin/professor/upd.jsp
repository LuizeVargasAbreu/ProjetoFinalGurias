<%@include file="../cabecalho.jsp"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%
    if (request.getParameter("id") == null)
    {
        response.sendRedirect("list.jsp");
        return;
    }

    Integer id = Integer.parseInt(request.getParameter("id"));
    ProfessorDAO dao = new ProfessorDAO();
    Professor prof = dao.buscarPorChavePrimaria(id);

    if (prof == null)
    {
        response.sendRedirect("list.jsp");
        return;

    }

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Professor - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- �rea que ocupar� o campo de formul�rio
                    segunda div -- campo de texto e label 
                -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtID" value="<%=prof.getId()%>" readonly="readonly" />
                        <label class="mdl-textfield__label" for="txtID">ID</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtNome" value="<%=prof.getNome()%>" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">clear</i></button>
                    
                    
                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


