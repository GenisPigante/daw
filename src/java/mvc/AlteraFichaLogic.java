
package mvc;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import maria.negocios.FichaPolicial;
import maria.persistencia.FichaPoliciaDao;
import mvc.Logica;

public class AlteraFichaLogic implements Logica {
    @Override
    public String executa(HttpServletRequest request,HttpServletResponse res)throws Exception {
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String residencia = request.getParameter("residencia");
        String delito = request.getParameter("delito");
        String data = request.getParameter("data");
        String hora = request.getParameter("hora");
        String local = request.getParameter("local");
        String estado = request.getParameter("estado");
        String avatar = request.getParameter("avatar");
        
        FichaPolicial ficha = new FichaPolicial();
        ficha.setId(Long.parseLong(id));
        ficha.setNome(nome);
        ficha.setCpf(cpf);
        ficha.setResidencia(residencia);
        ficha.setDelito(delito);
        ficha.setData(data);                           
        ficha.setHora(hora);
        ficha.setLocal(local);
        ficha.setEstado(estado);
        ficha.setAvatar(avatar);
        System.out.println(ficha.getEstado());
        FichaPoliciaDao dao = new FichaPoliciaDao();
        dao.alteraContato(ficha);
        System.out.println("Altera contato");

        return "index.jsp";
    }
}