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
        List<Contact> contactsToSearch = contactsDao.getContacts();
        long id = -1;
        for(Contact contact : contactsToSearch){
            if(contact.getFirstName().equalsIgnoreCase(request.getParameter("nameToEdit"))){
                id = contact.getId();
            }
        }
        Contact editContact = contactsDao.getContactById(id);
        editContact.setFirstName(request.getParameter("firstName"));
        editContact.setLastName(request.getParameter("lastName"));
        editContact.setPhone(request.getParameter("phone"));
        contactsDao.saveContact(editContact);
        List<Contact> contacts = contactsDao.getContacts();
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("/contacts/index.jsp").forward(request, response);
    }
}
