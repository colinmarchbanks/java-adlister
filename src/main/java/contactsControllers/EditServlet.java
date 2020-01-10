package contactsControllers;

import Dao.DaoFactory;
import contactsControllers.Contact;
import contactsControllers.Contacts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contact/edit")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Contacts contactsDao = DaoFactory.getContactsDao();
        List<Contact> contacts = contactsDao.getContacts();
        List<Contact> updatedContacts = new ArrayList<>();
        for(Contact contact : contacts){
            if(!contact.getFirstName().equalsIgnoreCase(request.getParameter("nameToEdit"))){
                updatedContacts.add(contact);
            }else{
                updatedContacts.add(new Contact(request.getParameter("firstName"),request.getParameter("lastName"),request.getParameter("phone")));
            }
        }
        request.setAttribute("contacts", updatedContacts);
        request.getRequestDispatcher("/contacts/index.jsp").forward(request, response);
    }
}
