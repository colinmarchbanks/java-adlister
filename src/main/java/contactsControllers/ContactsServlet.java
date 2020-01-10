package contactsControllers;

import Dao.DaoFactory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/contacts")
public class ContactsServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Contacts contactsDao = DaoFactory.getContactsDao();
        List<Contact> contacts = contactsDao.getContacts();
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("/contacts/index.jsp").forward(request, response);
    }
}
