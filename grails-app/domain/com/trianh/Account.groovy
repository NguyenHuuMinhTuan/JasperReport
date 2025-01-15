package com.trianh

class Account {

    Integer id
    String username
    String password
    String email
    Boolean type_account



    static constraints = {
        username(nullable: false)
        password(nullable: false)
        email(nullable: false)
        type_account(nullable: false)
    }
}
