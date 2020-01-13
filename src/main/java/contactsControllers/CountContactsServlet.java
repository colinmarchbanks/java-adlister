package contactsControllers;

import Dao.DaoFactory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/contact/count")
public class CountContactsServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Contacts contactsDao = DaoFactory.getContactsDao();
        List<Contact> contacts = contactsDao.getContacts();
        int count = 0;
        for(int i =0; i < contacts.size(); i++){
            count++;
        }
        request.setAttribute("numberOfContacts", count);
        request.getRequestDispatcher("/contacts/index.jsp").forward(request, response);
    }
}
