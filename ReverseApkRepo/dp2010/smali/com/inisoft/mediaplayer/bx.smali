.class public final Lcom/inisoft/mediaplayer/bx;
.super Ljava/lang/Object;


# instance fields
.field private a:Lb/a/a/a/a/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ftp_currentID"

    const-string v2, "anonymous"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/bx;->c:Ljava/lang/String;

    const-string v1, "ftp_currentPasswd"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/bx;->d:Ljava/lang/String;

    const-string v1, "ftp_encoding"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/bx;->e:Ljava/lang/String;

    const-string v1, "ftp_port"

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/bx;->f:I

    const-string v1, "ftp_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/bx;->i:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ftp_host"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bx;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ftp_workingDirectory"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/bx;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/bx;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/bx;->e:Ljava/lang/String;

    iput p5, p0, Lcom/inisoft/mediaplayer/bx;->f:I

    iput-object v3, p0, Lcom/inisoft/mediaplayer/bx;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/inisoft/mediaplayer/bx;->i:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ftp_currentID"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ftp_currentPasswd"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ftp_encoding"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ftp_port"

    iget v2, p0, Lcom/inisoft/mediaplayer/bx;->f:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ftp_mode"

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/bx;->i:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v3, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lb/a/a/a/a/c;

    invoke-direct {v0}, Lb/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->e:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bx;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/a/a/c;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lb/a/a/a/a/e;

    invoke-direct {v0}, Lb/a/a/a/a/e;-><init>()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v1, v0}, Lb/a/a/a/a/c;->a(Lb/a/a/a/a/e;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->g:Ljava/lang/String;

    const-string v1, "ftp://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    iget v2, p0, Lcom/inisoft/mediaplayer/bx;->f:I

    invoke-virtual {v1, v0, v2}, Lb/a/a/a/a/c;->a(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/bx;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->p()V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "anonymous"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bx;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bx;->d:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bx;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->q()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->e()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->s()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->f()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->k()I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/bx;->c()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/bx;->b(Ljava/lang/String;)Z

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bx;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ftp_host"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0, p1}, Lb/a/a/a/a/c;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ftp_workingDirectory"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final b()[Lb/a/a/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->r()[Lb/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/inisoft/mediaplayer/cn;
    .locals 1

    new-instance v0, Lcom/inisoft/mediaplayer/cn;

    invoke-direct {v0, p0, p1}, Lcom/inisoft/mediaplayer/cn;-><init>(Lcom/inisoft/mediaplayer/bx;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->o()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Lb/a/a/a/a/c;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string v0, "/"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "/"

    iput-object v1, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lb/a/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/bx;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bx;->a:Lb/a/a/a/a/c;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/bx;->c()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/bx;->a()V

    goto :goto_0
.end method
