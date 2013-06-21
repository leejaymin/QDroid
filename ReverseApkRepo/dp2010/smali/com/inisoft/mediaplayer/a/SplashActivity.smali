.class public Lcom/inisoft/mediaplayer/a/SplashActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/inisoft/mediaplayer/bw;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->a:Ljava/lang/String;

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->b:Lcom/inisoft/mediaplayer/bw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/a/SplashActivity;)V
    .locals 3

    const-string v0, "market://details?id=com.inisoft.mediaplayer.tegra2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/a/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/a/SplashActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/a/SplashActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/a/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->a:Ljava/lang/String;

    const-string v0, "ROADPLAY_TYPE"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->c:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "smb://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    const-string v0, "SAMBA_ID"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "SAMBA_PASSWD"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {p0, v3, v0}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/a/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "SELECTED_FORCECODEC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bw;->a(I)Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->b:Lcom/inisoft/mediaplayer/bw;

    invoke-static {p0}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->checkFFMpeg(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0044

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0a0043

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0a0042

    new-instance v4, Lcom/inisoft/mediaplayer/a/a;

    invoke-direct {v4, p0}, Lcom/inisoft/mediaplayer/a/a;-><init>(Lcom/inisoft/mediaplayer/a/SplashActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPlayer;->checkLoadLibrary()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->checkLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0096

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0a0051

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0a0091

    new-instance v4, Lcom/inisoft/mediaplayer/a/b;

    invoke-direct {v4, p0}, Lcom/inisoft/mediaplayer/a/b;-><init>(Lcom/inisoft/mediaplayer/a/SplashActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_4
    :goto_4
    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/a/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/a/SplashActivity;->finish()V

    :cond_5
    return-void

    :cond_6
    const-string v3, "ftp://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_7
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->a:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    if-eq v3, v6, :cond_2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "FTP_ID"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "FTP_PASSWD"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "FTP_ENCODIG"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FTP_PORT"

    const/16 v10, 0x15

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "FTP_MODE"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v10, "DICE_SETTINGS"

    invoke-virtual {p0, v10, v2}, Lcom/inisoft/mediaplayer/a/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    if-eqz v7, :cond_8

    const-string v11, "ftp_host"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    if-eqz v0, :cond_9

    const-string v7, "ftp_workingDirectory"

    invoke-interface {v10, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_9
    if-eqz v3, :cond_a

    const-string v0, "ftp_currentID"

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_5
    if-eqz v6, :cond_b

    const-string v0, "ftp_currentPasswd"

    invoke-interface {v10, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_6
    if-eqz v8, :cond_c

    const-string v0, "ftp_encoding"

    invoke-interface {v10, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_7
    const-string v0, "ftp_port"

    invoke-interface {v10, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "ftp_mode"

    invoke-interface {v10, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_a
    const-string v0, "ftp_currentID"

    const-string v3, "anonymous"

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_b
    const-string v0, "ftp_currentPasswd"

    const-string v3, ""

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_c
    const-string v0, "ftp_encoding"

    const-string v3, "default"

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_7

    :cond_d
    move v0, v1

    goto/16 :goto_2

    :cond_e
    move v0, v1

    goto/16 :goto_3

    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "START_FROM_SPLASH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "FILE_PATH"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ROADPLAY_TYPE"

    iget v2, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->b:Lcom/inisoft/mediaplayer/bw;

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    if-eq v1, v2, :cond_4

    const-string v1, "SELECTED_FORCECODEC"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/a/SplashActivity;->b:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/bw;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_10
    move v0, v4

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
