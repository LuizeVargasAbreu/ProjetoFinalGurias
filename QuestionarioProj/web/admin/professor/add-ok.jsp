<%@include file="../cabecalho.jsp"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%
    String msg="";
    
    if(request.getParameter("txtNome") == null)// || request.getParameter("txtID")== null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
             
        String nome = request.getParameter("txtNome");
     //   Integer id = Integer.parseInt(request.getParameter("txtID"));
        
        ProfessorDAO dao = new ProfessorDAO();
        Professor prof = new Professor();

        prof.setNome(nome);
     //   prof.setId(id);
        
       try
        {
            dao.incluir(prof);
            msg = "Professor cadastrada com sucesso";
            
        }
        catch(Exception ex)
        {
            msg = "Erro ao cadastrar profegoria";
        }
        
    }
    String nome = request.getParameter("txtNome");
   // String id = request.getParameter("txtID");

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
             <%=msg%>.<br />
             Nome: <%=nome%><br />
<!--             ID da Professor: <%//=id%><br />-->
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

