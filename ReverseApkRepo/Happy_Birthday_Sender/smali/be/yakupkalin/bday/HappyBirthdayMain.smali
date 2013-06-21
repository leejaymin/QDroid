.class public Lbe/yakupkalin/bday/HappyBirthdayMain;
.super Landroid/app/Activity;
.source "HappyBirthdayMain.java"


# static fields
.field public static final PICK_CONTACT:I = 0x1


# instance fields
.field private btnSend:Landroid/widget/Button;

.field private btnStatus:Landroid/widget/Button;

.field private spLanguage:Landroid/widget/Spinner;

.field private txtBdayText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/yakupkalin/bday/HappyBirthdayMain;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->btnStatus:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lbe/yakupkalin/bday/HappyBirthdayMain;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->txtBdayText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lbe/yakupkalin/bday/HappyBirthdayMain;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->spLanguage:Landroid/widget/Spinner;

    return-object v0
.end method

.method private sendMessage(Ljava/lang/String;)Z
    .locals 8
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v7, "SMS_SENT"

    .line 110
    .local v7, SENT:Ljava/lang/String;
    const-string v6, "SMS_DELIVERED"

    .line 113
    .local v6, DELIVERED:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 116
    .local v4, sentPI:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 119
    .local v5, deliveredPI:Landroid/app/PendingIntent;
    new-instance v1, Lbe/yakupkalin/bday/HappyBirthdayMain$4;

    invoke-direct {v1, p0}, Lbe/yakupkalin/bday/HappyBirthdayMain$4;-><init>(Lbe/yakupkalin/bday/HappyBirthdayMain;)V

    .line 142
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, v1, v2}, Lbe/yakupkalin/bday/HappyBirthdayMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    new-instance v1, Lbe/yakupkalin/bday/HappyBirthdayMain$5;

    invoke-direct {v1, p0}, Lbe/yakupkalin/bday/HappyBirthdayMain$5;-><init>(Lbe/yakupkalin/bday/HappyBirthdayMain;)V

    .line 158
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v1, v2}, Lbe/yakupkalin/bday/HappyBirthdayMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 161
    .local v0, sm:Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    iget-object v1, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->txtBdayText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0           #sm:Landroid/telephony/SmsManager;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "reqCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    packed-switch p1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 93
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .local v1, contactData:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 95
    invoke-virtual/range {v0 .. v5}, Lbe/yakupkalin/bday/HappyBirthdayMain;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, number:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, name:Ljava/lang/String;
    invoke-direct {p0, v8}, Lbe/yakupkalin/bday/HappyBirthdayMain;->sendMessage(Ljava/lang/String;)Z

    .line 100
    iget-object v0, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->btnStatus:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lbe/yakupkalin/bday/HappyBirthdayMain;->setContentView(I)V

    .line 36
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lbe/yakupkalin/bday/HappyBirthdayMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->btnSend:Landroid/widget/Button;

    .line 37
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lbe/yakupkalin/bday/HappyBirthdayMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->spLanguage:Landroid/widget/Spinner;

    .line 38
    const v2, 0x7f060004

    invoke-virtual {p0, v2}, Lbe/yakupkalin/bday/HappyBirthdayMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->txtBdayText:Landroid/widget/TextView;

    .line 39
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lbe/yakupkalin/bday/HappyBirthdayMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->btnStatus:Landroid/widget/Button;

    .line 41
    iget-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->btnSend:Landroid/widget/Button;

    new-instance v3, Lbe/yakupkalin/bday/HappyBirthdayMain$1;

    invoke-direct {v3, p0}, Lbe/yakupkalin/bday/HappyBirthdayMain$1;-><init>(Lbe/yakupkalin/bday/HappyBirthdayMain;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->btnStatus:Landroid/widget/Button;

    new-instance v3, Lbe/yakupkalin/bday/HappyBirthdayMain$2;

    invoke-direct {v3, p0}, Lbe/yakupkalin/bday/HappyBirthdayMain$2;-><init>(Lbe/yakupkalin/bday/HappyBirthdayMain;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lbe/yakupkalin/bday/HappyBirthdayMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, arBday:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 60
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 61
    const v2, 0x1090008

    .line 60
    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 63
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    iget-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->spLanguage:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 65
    iget-object v2, p0, Lbe/yakupkalin/bday/HappyBirthdayMain;->spLanguage:Landroid/widget/Spinner;

    new-instance v3, Lbe/yakupkalin/bday/HappyBirthdayMain$3;

    invoke-direct {v3, p0}, Lbe/yakupkalin/bday/HappyBirthdayMain$3;-><init>(Lbe/yakupkalin/bday/HappyBirthdayMain;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    return-void
.end method

.method public showContactList()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lbe/yakupkalin/bday/HappyBirthdayMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    return-void
.end method
