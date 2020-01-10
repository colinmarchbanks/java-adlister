package Dao;

import contactsControllers.ContactListDao;
import contactsControllers.Contacts;

public class DaoFactory {
    private static Contacts contactsDao;
    public static Contacts getContactsDao() {
        if (contactsDao == null) {
            contactsDao = new ContactListDao();
        }
        return contactsDao;
    }
}
