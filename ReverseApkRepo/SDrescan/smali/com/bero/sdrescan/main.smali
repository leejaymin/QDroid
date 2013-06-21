.class public Lcom/bero/sdrescan/main;
.super Landroid/app/Activity;
.source "main.java"


# static fields
.field private static final PREFERENCES_EULA:Ljava/lang/String; = "eula"

.field private static final PREFERENCE_EULA_ACCEPTED:Ljava/lang/String; = "eula.accepted"

.field private static final TAG:Ljava/lang/String; = "sdrescan"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 30
    iput-object v0, p0, Lcom/bero/sdrescan/main;->mAlertDialog:Landroid/app/AlertDialog;

    .line 117
    new-instance v0, Lcom/bero/sdrescan/main$1;

    invoke-direct {v0, p0}, Lcom/bero/sdrescan/main$1;-><init>(Lcom/bero/sdrescan/main;)V

    iput-object v0, p0, Lcom/bero/sdrescan/main;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/bero/sdrescan/main;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bero/sdrescan/main;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bero/sdrescan/main;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 204
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static readFile(Landroid/app/Activity;I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "activity"
    .parameter "id"

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, buffer:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 197
    invoke-static {v3}, Lcom/bero/sdrescan/main;->closeStream(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    move-object v5, v0

    .line 195
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v4           #line:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 192
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 194
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .line 197
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v2}, Lcom/bero/sdrescan/main;->closeStream(Ljava/io/Closeable;)V

    .line 195
    const-string v5, ""

    goto :goto_1

    .line 196
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 197
    :goto_3
    invoke-static {v2}, Lcom/bero/sdrescan/main;->closeStream(Ljava/io/Closeable;)V

    .line 198
    throw v5

    .line 196
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_3

    .line 194
    :catch_1
    move-exception v5

    move-object v1, v5

    goto :goto_2
.end method

.method private static showEula(Lcom/bero/sdrescan/main;)Z
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    const-string v2, "eula"

    invoke-virtual {p0, v2, v4}, Lcom/bero/sdrescan/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "eula.accepted"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 159
    const v2, 0x7f050009

    new-instance v3, Lcom/bero/sdrescan/main$5;

    invoke-direct {v3, v1, p0}, Lcom/bero/sdrescan/main$5;-><init>(Landroid/content/SharedPreferences;Lcom/bero/sdrescan/main;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v2, 0x7f05000a

    new-instance v3, Lcom/bero/sdrescan/main$6;

    invoke-direct {v3, p0}, Lcom/bero/sdrescan/main$6;-><init>(Lcom/bero/sdrescan/main;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    new-instance v2, Lcom/bero/sdrescan/main$7;

    invoke-direct {v2, p0}, Lcom/bero/sdrescan/main$7;-><init>(Lcom/bero/sdrescan/main;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Lcom/bero/sdrescan/main;->readFile(Landroid/app/Activity;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v2, v4

    .line 180
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public Start()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bero/sdrescan/main;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 75
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/high16 v2, 0x7f02

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "sdrescan"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/bero/sdrescan/main;->setContentView(I)V

    .line 45
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 46
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 47
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 48
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050004

    new-instance v2, Lcom/bero/sdrescan/main$2;

    invoke-direct {v2, p0}, Lcom/bero/sdrescan/main$2;-><init>(Lcom/bero/sdrescan/main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050006

    new-instance v2, Lcom/bero/sdrescan/main$3;

    invoke-direct {v2, p0}, Lcom/bero/sdrescan/main$3;-><init>(Lcom/bero/sdrescan/main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    const v1, 0x7f050007

    new-instance v2, Lcom/bero/sdrescan/main$4;

    invoke-direct {v2, p0}, Lcom/bero/sdrescan/main$4;-><init>(Lcom/bero/sdrescan/main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/bero/sdrescan/main;->mAlertDialog:Landroid/app/AlertDialog;

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "sdrescan"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "sdrescan"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "sdrescan"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 89
    const-string v1, "sdrescan"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/bero/sdrescan/main;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/bero/sdrescan/main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-static {p0}, Lcom/bero/sdrescan/main;->showEula(Lcom/bero/sdrescan/main;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/bero/sdrescan/main;->Start()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "sdrescan"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/bero/sdrescan/main;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/bero/sdrescan/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method
