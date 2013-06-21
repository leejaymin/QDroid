.class public Lcom/dakkhin/android/bhadram/EditEntry;
.super Landroid/app/Activity;
.source "EditEntry.java"


# instance fields
.field private cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

.field private dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

.field private descTextView:Landroid/widget/TextView;

.field private infoTextView:Landroid/widget/TextView;

.field private mRowId:Ljava/lang/Long;

.field private nameTextView:Landroid/widget/TextView;

.field private pwTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dakkhin/android/bhadram/EditEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EditEntry;->checkAndAuth()V

    return-void
.end method

.method static synthetic access$1(Lcom/dakkhin/android/bhadram/EditEntry;)Z
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EditEntry;->validate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/CryptoHelper;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->nameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->pwTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->infoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/dakkhin/android/bhadram/EditEntry;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->mRowId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$7(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/DBHelper;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    return-object v0
.end method

.method static synthetic access$8(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->descTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkAndAuth()V
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 143
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "dakkhin_bhadram_auth"

    invoke-virtual {p0, v2}, Lcom/dakkhin/android/bhadram/EditEntry;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dakkhin/android/bhadram/Auth;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EditEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    if-eqz v0, :cond_0

    .line 153
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 158
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v2

    .line 151
    if-eqz v0, :cond_0

    .line 153
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 154
    :catch_1
    move-exception v2

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v2

    .line 151
    if-eqz v0, :cond_1

    .line 153
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 157
    :cond_1
    :goto_1
    throw v2

    .line 154
    :catch_2
    move-exception v3

    goto :goto_1

    .restart local v1       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private validate()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->pwTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EditEntry;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/high16 v10, 0x7f03

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->setContentView(I)V

    .line 40
    new-instance v10, Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-direct {v10, p0}, Lcom/dakkhin/android/bhadram/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    .line 41
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-virtual {v10}, Lcom/dakkhin/android/bhadram/DBHelper;->open()V

    .line 42
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->mRowId:Ljava/lang/Long;

    .line 44
    const v10, 0x7f050002

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->titleTextView:Landroid/widget/TextView;

    .line 45
    const v10, 0x7f050006

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->nameTextView:Landroid/widget/TextView;

    .line 46
    const v10, 0x7f050004

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->descTextView:Landroid/widget/TextView;

    .line 47
    const v10, 0x7f050008

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->pwTextView:Landroid/widget/TextView;

    .line 48
    const v10, 0x7f05000a

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->infoTextView:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EditEntry;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 51
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_4

    .line 52
    const-string v10, "_id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->mRowId:Ljava/lang/Long;

    .line 53
    const-string v10, "pw"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v8

    .line 54
    .local v8, pw:[C
    new-instance v10, Lcom/dakkhin/android/bhadram/CryptoHelper;

    invoke-direct {v10}, Lcom/dakkhin/android/bhadram/CryptoHelper;-><init>()V

    iput-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

    .line 55
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

    invoke-virtual {v10, v8}, Lcom/dakkhin/android/bhadram/CryptoHelper;->generateKey([C)V

    .line 57
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->mRowId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    .line 58
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    iget-object v11, p0, Lcom/dakkhin/android/bhadram/EditEntry;->mRowId:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/dakkhin/android/bhadram/DBHelper;->getWithId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 59
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/dakkhin/android/bhadram/EditEntry;->startManagingCursor(Landroid/database/Cursor;)V

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_4

    .line 62
    const-string v10, "TITLE"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, t:Ljava/lang/String;
    const-string v10, "DESC"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, d:Ljava/lang/String;
    const-string v10, "NAME"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 65
    .local v5, nb:[B
    const-string v10, "PW"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 66
    .local v7, pb:[B
    const-string v10, "INFO"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 68
    .local v4, ib:[B
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

    invoke-virtual {v10}, Lcom/dakkhin/android/bhadram/CryptoHelper;->decryptInit()V

    .line 70
    if-eqz v9, :cond_0

    .line 71
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    if-eqz v2, :cond_1

    .line 73
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_1
    if-eqz v5, :cond_2

    .line 75
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->nameTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

    invoke-virtual {v11, v5}, Lcom/dakkhin/android/bhadram/CryptoHelper;->decrypt([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    if-eqz v7, :cond_3

    .line 77
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->pwTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

    invoke-virtual {v11, v7}, Lcom/dakkhin/android/bhadram/CryptoHelper;->decrypt([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_3
    if-eqz v4, :cond_4

    .line 79
    iget-object v10, p0, Lcom/dakkhin/android/bhadram/EditEntry;->infoTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;

    invoke-virtual {v11, v4}, Lcom/dakkhin/android/bhadram/CryptoHelper;->decrypt([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #d:Ljava/lang/String;
    .end local v4           #ib:[B
    .end local v5           #nb:[B
    .end local v7           #pb:[B
    .end local v8           #pw:[C
    .end local v9           #t:Ljava/lang/String;
    :cond_4
    const v10, 0x7f05000b

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 85
    .local v6, okButton:Landroid/widget/Button;
    const v10, 0x7f05000c

    invoke-virtual {p0, v10}, Lcom/dakkhin/android/bhadram/EditEntry;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    .local v1, cancelButton:Landroid/widget/Button;
    new-instance v10, Lcom/dakkhin/android/bhadram/EditEntry$1;

    invoke-direct {v10, p0}, Lcom/dakkhin/android/bhadram/EditEntry$1;-><init>(Lcom/dakkhin/android/bhadram/EditEntry;)V

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v10, Lcom/dakkhin/android/bhadram/EditEntry$2;

    invoke-direct {v10, p0}, Lcom/dakkhin/android/bhadram/EditEntry$2;-><init>(Lcom/dakkhin/android/bhadram/EditEntry;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EditEntry;->checkAndAuth()V

    .line 136
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EditEntry;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/dakkhin/android/bhadram/App;

    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/App;->startAppTimeout()V

    .line 137
    return-void
.end method
