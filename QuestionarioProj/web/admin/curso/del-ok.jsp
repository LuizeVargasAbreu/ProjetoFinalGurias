<%@include file="../cabecalho.jsp"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%
    String msg = "";
    if(request.getParameter("id")==null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        CursoDAO dao = new CursoDAO();

      /*  Curso curso = dao.buscarPorChavePrimaria(id);
        if(curso!=null)
        {
            dao.excluir(curso);
            msg = "Registro de Curso exclu�do com sucesso";
        }
        else
        {
            msg = "Registro de Curso n�o encontrado. Verifique.";
        }
        
    }*/
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%><br />
            <a href="list.jsp"><i class="material-icons">Voltar</i></a>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

