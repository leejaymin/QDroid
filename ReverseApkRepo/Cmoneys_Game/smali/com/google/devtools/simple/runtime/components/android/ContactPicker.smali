.class public Lcom/google/devtools/simple/runtime/components/android/ContactPicker;
.super Lcom/google/devtools/simple/runtime/components/android/ButtonBase;
.source "ContactPicker.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SOCIAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A button that, when clicked on, displays a list of the contacts to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul><li> <code>ContactName</code>: the contact\'s name </li> <li> <code>EmailAddress</code>: the contact\'s primary email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul></p><p>Other properties affect the appearance of the button (<code>Alignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static final EMAIL_INDEX:I = 0x1

.field private static final NAME_INDEX:I

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final activityContext:Landroid/app/Activity;

.field protected contactName:Ljava/lang/String;

.field protected contactPictureUri:Ljava/lang/String;

.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field protected emailAddress:Ljava/lang/String;

.field private final intentUri:Landroid/net/Uri;

.field protected requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 73
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;Landroid/net/Uri;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;Landroid/net/Uri;)V
    .locals 1
    .parameter "container"
    .parameter "intentUri"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 78
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 79
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->activityContext:Landroid/app/Activity;

    .line 80
    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->intentUri:Landroid/net/Uri;

    .line 81
    return-void
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 200
    const-string v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public BeforePicking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 190
    const-string v0, "BeforePicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public ContactName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public EmailAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 109
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;-><init>(Landroid/app/Activity;)V

    const-string v1, "picking an EmailAddress"

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->warnNotSupported(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->contactPictureUri:Ljava/lang/String;

    return-object v0
.end method

.method public click()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->BeforePicking()V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->intentUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->requestCode:I

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->requestCode:I

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->activityContext:Landroid/app/Activity;

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method

.method protected getEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "emailId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 160
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 165
    .local v9, id:I
    const-string v7, ""

    .line 166
    .local v7, data:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_methods._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v5

    .line 170
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 178
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    move-object v0, v7

    .line 180
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #id:I
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v8

    .line 162
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v0, ""

    goto :goto_0

    .line 178
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #data:Ljava/lang/String;
    .restart local v9       #id:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    throw v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 134
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->requestCode:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 135
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, contactUri:Landroid/net/Uri;
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 140
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->contactName:Ljava/lang/String;

    .line 142
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, emailId:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 144
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 145
    const-string v0, "ContactPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", email address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v7           #emailId:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 153
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ContactPicker;->AfterPicking()V

    .line 155
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_2
    return-void

    .line 150
    .restart local v1       #contactUri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    throw v0
.end method
