.class public Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;
.super Lcom/google/devtools/simple/runtime/components/android/ContactPicker;
.source "PhoneNumberPicker.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SOCIAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A button that, when clicked on, displays a list of the contacts\' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul><li> <code>ContactName</code>: the contact\'s name </li> <li> <code>PhoneNumber</code>: the contact\'s phone number </li> <li> <code>EmailAddress</code>: the contact\'s email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul></p><p>Other properties affect the appearance of the button (<code>Alignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static final EMAIL_INDEX:I = 0x3

.field private static final NAME_INDEX:I = 0x0

.field private static final NUMBER_INDEX:I = 0x1

.field private static final PERSON_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private phoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 65
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;Landroid/net/Uri;)V

    .line 66
    return-void
.end method


# virtual methods
.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 87
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->requestCode:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 88
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 89
    .local v1, phoneUri:Landroid/net/Uri;
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 93
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 96
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 97
    .local v6, contactId:I
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v6

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 98
    .local v7, contactUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 99
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, emailId:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 101
    const-string v0, "PhoneNumberPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v6           #contactId:I
    .end local v7           #contactUri:Landroid/net/Uri;
    .end local v9           #emailId:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    .line 109
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/PhoneNumberPicker;->AfterPicking()V

    .line 111
    .end local v1           #phoneUri:Landroid/net/Uri;
    :cond_2
    return-void

    .line 106
    .restart local v1       #phoneUri:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    throw v0
.end method
