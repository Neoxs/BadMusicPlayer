import 'package:fast_contacts/fast_contacts.dart';

class MyContact {
  final String name;
  final String phone;
  final String email;

  MyContact({required this.name, required this.phone, required this.email});

  List<Map<String, String>> formatContacts(List<Contact> contacts) {
    List<Map<String, String>> formattedContacts = [];
    for (Contact contact in contacts) {
      String name = contact.displayName.toString();
      String phone = contact.phones.isNotEmpty ? contact.phones.first.number : '';
      String email = contact.emails.isNotEmpty ? contact.emails.first.address : '';

      Map<String, String> formattedContact = {
        'name': name,
        'phone': phone,
        'email': email,
      };

      formattedContacts.add(formattedContact);
    }

    return formattedContacts;
  }
}
