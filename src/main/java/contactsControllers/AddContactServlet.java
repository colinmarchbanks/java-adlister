package contactsControllers;

import Dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/contact/add")
public class AddContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Contacts contactsDao = DaoFactory.getContactsDao();
        List<Contact> contacts = contactsDao.getContacts();
        contacts.add(new Contact(request.getParameter("firstName"),request.getParameter("lastName"),request.getParameter("phone")));
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("/contacts/index.jsp").forward(request, response);
    }
}
