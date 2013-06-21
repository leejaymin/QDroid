.class public Lcom/dakkhin/android/bhadram/Auth;
.super Landroid/app/Activity;
.source "Auth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkLicense()V
    .locals 9

    .prologue
    .line 138
    const/4 v3, 0x1

    .line 139
    .local v3, licAccepted:Z
    const/4 v4, 0x0

    .line 141
    .local v4, licFileStream:Ljava/io/FileInputStream;
    :try_start_0
    const-string v6, "lic"

    invoke-virtual {p0, v6}, Lcom/dakkhin/android/bhadram/Auth;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 145
    if-eqz v4, :cond_0

    .line 147
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 153
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/Auth;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f04001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 157
    .local v5, licMessage:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 158
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 159
    const-string v7, "Agree"

    new-instance v8, Lcom/dakkhin/android/bhadram/Auth$2;

    invoke-direct {v8, p0}, Lcom/dakkhin/android/bhadram/Auth$2;-><init>(Lcom/dakkhin/android/bhadram/Auth;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 177
    const-string v7, "Decline"

    new-instance v8, Lcom/dakkhin/android/bhadram/Auth$3;

    invoke-direct {v8, p0}, Lcom/dakkhin/android/bhadram/Auth$3;-><init>(Lcom/dakkhin/android/bhadram/Auth;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 183
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 185
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v5           #licMessage:Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 142
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 143
    .local v2, e:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 145
    if-eqz v4, :cond_0

    .line 147
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 148
    :catch_1
    move-exception v6

    goto :goto_0

    .line 144
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 145
    if-eqz v4, :cond_2

    .line 147
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 151
    :cond_2
    :goto_1
    throw v6

    .line 148
    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/dakkhin/android/bhadram/Auth;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/Auth;->checkLicense()V

    .line 39
    const v2, 0x7f050014

    invoke-virtual {p0, v2}, Lcom/dakkhin/android/bhadram/Auth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, okButton:Landroid/widget/Button;
    const v2, 0x7f050011

    invoke-virtual {p0, v2}, Lcom/dakkhin/android/bhadram/Auth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, passwordTextView:Landroid/widget/TextView;
    new-instance v2, Lcom/dakkhin/android/bhadram/Auth$1;

    invoke-direct {v2, p0, v1}, Lcom/dakkhin/android/bhadram/Auth$1;-><init>(Lcom/dakkhin/android/bhadram/Auth;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const-string v6, "dakkhin_bhadram_auth"

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    const-string v5, "dakkhin_bhadram_auth"

    invoke-virtual {p0, v6}, Lcom/dakkhin/android/bhadram/Auth;->deleteFile(Ljava/lang/String;)Z

    .line 191
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/Auth;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/dakkhin/android/bhadram/App;

    invoke-virtual {v5}, Lcom/dakkhin/android/bhadram/App;->cancelTimer()V

    .line 193
    const/4 v1, 0x1

    .line 195
    .local v1, firstTime:Z
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 196
    const-string v6, "/data/com.dakkhin.android.bhadram/databases/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "akandaka"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, db:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    const/4 v1, 0x0

    .line 200
    :cond_0
    if-nez v1, :cond_1

    .line 201
    const v5, 0x7f050012

    invoke-virtual {p0, v5}, Lcom/dakkhin/android/bhadram/Auth;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 202
    .local v4, pwRl:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 204
    const v5, 0x7f050013

    invoke-virtual {p0, v5}, Lcom/dakkhin/android/bhadram/Auth;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    .local v3, pwR:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 206
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    const v5, 0x7f050015

    invoke-virtual {p0, v5}, Lcom/dakkhin/android/bhadram/Auth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v5, 0x7f050016

    invoke-virtual {p0, v5}, Lcom/dakkhin/android/bhadram/Auth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .end local v3           #pwR:Landroid/widget/TextView;
    .end local v4           #pwRl:Landroid/widget/TextView;
    :cond_1
    const/4 v2, 0x0

    .line 213
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v5, "dakkhin_bhadram_auth"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/dakkhin/android/bhadram/Auth;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 216
    if-eqz v2, :cond_2

    .line 218
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 223
    :cond_2
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v5

    .line 216
    if-eqz v2, :cond_2

    .line 218
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v5

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v5

    .line 216
    if-eqz v2, :cond_3

    .line 218
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    :cond_3
    :goto_1
    throw v5

    .line 219
    :catch_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_0
.end method
