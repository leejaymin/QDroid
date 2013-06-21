.class public Lcom/google/devtools/simple/runtime/components/android/Texting;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SOCIAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code>  method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property. <p>This component can also receive test messages unless the <code>ReceivingEnabled</code> property is False.  When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.RECEIVE_SMS, android.permission.SEND_SMS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/simple/runtime/components/android/Texting$SmsReceiver;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private receivingEnabled:Z

.field private smsManager:Landroid/telephony/gsm/SmsManager;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Texting$SmsReceiver;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Texting$SmsReceiver;-><init>(Lcom/google/devtools/simple/runtime/components/android/Texting;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    const-string v1, "Simple"

    const-string v2, "Texting constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->smsManager:Landroid/telephony/gsm/SmsManager;

    .line 96
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->receivingEnabled:Z

    .line 98
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/SmsMessage;
    .locals 8
    .parameter "intent"

    .prologue
    .line 212
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 213
    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 215
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 216
    aget-object p0, v2, v1

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v5, v1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    array-length v7, v5

    new-array v6, v7, [[B

    .line 219
    .local v6, pdus:[[B
    array-length v4, v6

    .line 220
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/gsm/SmsMessage;

    .line 221
    .local v3, msgs:[Landroid/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 222
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 223
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_1
    return-object v3
.end method


# virtual methods
.method public Initialize()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "Simple"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->message:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "number"
    .parameter "messageText"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "number As String"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    const-string v2, "MessageReceived"

    .line 167
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->receivingEnabled:Z

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "Simple"

    const-string v1, "MessageReceived"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "MessageReceived"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v2, v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->phoneNumber:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public ReceivingEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->receivingEnabled:Z

    .line 199
    return-void
.end method

.method public ReceivingEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->receivingEnabled:Z

    return v0
.end method

.method public SendMessage()V
    .locals 6
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->smsManager:Landroid/telephony/gsm/SmsManager;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Texting;->message:Ljava/lang/String;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 155
    return-void
.end method
