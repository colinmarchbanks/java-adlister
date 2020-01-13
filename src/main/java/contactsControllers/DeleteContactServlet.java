package contactsControllers;

import Dao.DaoFactory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contact/delete")
public class DeleteContactServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Contacts contactsDao = DaoFactory.getContactsDao();
        long deletion = -1;
        List<Contact> contactsToSearchThrough = contactsDao.getContacts();
        for(Contact contact : contactsToSearchThrough){
            if(contact.getFirstName().equalsIgnoreCase(request.getParameter("name"))){
                deletion = contact.getId();
            }
        }
        contactsDao.deleteContactById(deletion);
        List<Contact> contacts = contactsDao.getContacts();
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("/contacts/index.jsp").forward(request, response);
    }
}
