.class public Lcom/chillingo/crystal/utils/ContactUtils;
.super Ljava/lang/Object;


# static fields
.field private static CONTACTS_CONTENT_URI:Landroid/net/Uri;

.field private static CONTACTS_DISPLAY_NAME:Ljava/lang/String;

.field private static CONTACT_METHODS_QUERY_STRING:Ljava/lang/String;

.field private static ContactsApi5:Ljava/lang/Class;

.field private static ContactsContractApi5:Ljava/lang/Class;

.field private static EMAIL_CONTACT_ID:Ljava/lang/String;

.field private static EMAIL_CONTENT_URI:Landroid/net/Uri;

.field private static EMAIL_DATA:Ljava/lang/String;

.field private static EMAIL_DISPLAY_NAME:Ljava/lang/String;

.field private static EmailApi5:Ljava/lang/Class;

.field private static PHONE_CONTACT_ID:Ljava/lang/String;

.field private static PHONE_CONTENT_URI:Landroid/net/Uri;

.field private static PHONE_NUMBER:Ljava/lang/String;

.field private static PHONE_TYPE_NAME:Ljava/lang/String;

.field private static PhoneApi5:Ljava/lang/Class;

.field private static _ID:Ljava/lang/String;

.field private static mSupportsApi5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "person=? and kind=?"

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->CONTACT_METHODS_QUERY_STRING:Ljava/lang/String;

    sput-boolean v2, Lcom/chillingo/crystal/utils/ContactUtils;->mSupportsApi5:Z

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->ContactsContractApi5:Ljava/lang/Class;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->ContactsApi5:Ljava/lang/Class;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->EmailApi5:Ljava/lang/Class;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->PhoneApi5:Ljava/lang/Class;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->CONTACTS_CONTENT_URI:Landroid/net/Uri;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->_ID:Ljava/lang/String;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->CONTACTS_DISPLAY_NAME:Ljava/lang/String;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_CONTACT_ID:Ljava/lang/String;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_DATA:Ljava/lang/String;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_DISPLAY_NAME:Ljava/lang/String;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_CONTENT_URI:Landroid/net/Uri;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_CONTACT_ID:Ljava/lang/String;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_NUMBER:Ljava/lang/String;

    sput-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_TYPE_NAME:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/utils/ContactUtils;->constructContactsContract()V

    invoke-static {}, Lcom/chillingo/crystal/utils/ContactUtils;->constructContacts()V

    invoke-static {}, Lcom/chillingo/crystal/utils/ContactUtils;->constructEmail()V

    invoke-static {}, Lcom/chillingo/crystal/utils/ContactUtils;->constructPhoneNumbers()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/chillingo/crystal/utils/ContactUtils;->mSupportsApi5:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v2, Lcom/chillingo/crystal/utils/ContactUtils;->mSupportsApi5:Z

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v2, Lcom/chillingo/crystal/utils/ContactUtils;->mSupportsApi5:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressBookContactsApiLevel1(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/utils/ContactDetails;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-ne v1, v10, :cond_2

    new-instance v8, Lcom/chillingo/crystal/utils/ContactDetails;

    invoke-direct {v8}, Lcom/chillingo/crystal/utils/ContactDetails;-><init>()V

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/chillingo/crystal/utils/ContactDetails;->setName(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v8, v1}, Lcom/chillingo/crystal/utils/ContactDetails;->setImage(Ljava/lang/String;)V

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v4, v3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/chillingo/crystal/utils/ContactUtils;->CONTACT_METHODS_QUERY_STRING:Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "label"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/chillingo/crystal/utils/ContactDetails;->emailAddresses()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/chillingo/crystal/utils/ContactUtils;->CONTACT_METHODS_QUERY_STRING:Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "label"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/chillingo/crystal/utils/ContactDetails;->phoneNumbers()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v6
.end method

.method public static addressBookContactsApiLevel5(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/utils/ContactDetails;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->CONTACTS_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v8, Lcom/chillingo/crystal/utils/ContactDetails;

    invoke-direct {v8}, Lcom/chillingo/crystal/utils/ContactDetails;-><init>()V

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/chillingo/crystal/utils/ContactDetails;->setName(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v8, v1}, Lcom/chillingo/crystal/utils/ContactDetails;->setImage(Ljava/lang/String;)V

    sget-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->_ID:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/String;

    aput-object v9, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_DATA:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/chillingo/crystal/utils/ContactDetails;->emailAddresses()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "email"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/String;

    aput-object v9, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/chillingo/crystal/utils/ContactDetails;->phoneNumbers()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phone"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v6
.end method

.method public static arrayOfUserContactEmails(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v0, Lcom/chillingo/crystal/utils/ContactUtils;->mSupportsApi5:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/ContactUtils;->addressBookContactsApiLevel5(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/utils/ContactDetails;

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/ContactDetails;->emailAddresses()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/chillingo/crystal/utils/ContactUtils;->addressBookContactsApiLevel1(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static constructContacts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "android.provider.ContactsContract$Contacts"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->ContactsApi5:Ljava/lang/Class;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->ContactsApi5:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->CONTACTS_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->ContactsApi5:Ljava/lang/Class;

    const-string v1, "_ID"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->_ID:Ljava/lang/String;

    return-void
.end method

.method private static constructContactsContract()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "android.provider.ContactsContract"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->ContactsContractApi5:Ljava/lang/Class;

    return-void
.end method

.method private static constructEmail()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "android.provider.ContactsContract$CommonDataKinds$Email"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EmailApi5:Ljava/lang/Class;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EmailApi5:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EmailApi5:Ljava/lang/Class;

    const-string v1, "CONTACT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_CONTACT_ID:Ljava/lang/String;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EmailApi5:Ljava/lang/Class;

    const-string v1, "DATA"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_DATA:Ljava/lang/String;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EmailApi5:Ljava/lang/Class;

    const-string v1, "DISPLAY_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->EMAIL_DISPLAY_NAME:Ljava/lang/String;

    return-void
.end method

.method private static constructPhoneNumbers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "android.provider.ContactsContract$CommonDataKinds$Phone"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PhoneApi5:Ljava/lang/Class;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PhoneApi5:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PhoneApi5:Ljava/lang/Class;

    const-string v1, "CONTACT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_CONTACT_ID:Ljava/lang/String;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PhoneApi5:Ljava/lang/Class;

    const-string v1, "NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_NUMBER:Ljava/lang/String;

    sget-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PhoneApi5:Ljava/lang/Class;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/utils/ContactUtils;->PHONE_TYPE_NAME:Ljava/lang/String;

    return-void
.end method

.method public static dictionaryOfContactNamesAndEmails(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-boolean v0, Lcom/chillingo/crystal/utils/ContactUtils;->mSupportsApi5:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/ContactUtils;->addressBookContactsApiLevel5(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/utils/ContactDetails;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "name"

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/ContactDetails;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "image"

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/ContactDetails;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "emaildict"

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/ContactDetails;->emailAddresses()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/chillingo/crystal/utils/ContactUtils;->addressBookContactsApiLevel1(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static dictionaryOfContactNamesAndNumbers(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-boolean v0, Lcom/chillingo/crystal/utils/ContactUtils;->mSupportsApi5:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/ContactUtils;->addressBookContactsApiLevel5(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/utils/ContactDetails;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "name"

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/ContactDetails;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "image"

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/ContactDetails;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "phonedict"

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/ContactDetails;->phoneNumbers()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/chillingo/crystal/utils/ContactUtils;->addressBookContactsApiLevel1(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v2
.end method
