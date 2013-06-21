.class final Lcom/rubycell/c2dm/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/rubycell/c2dm/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/rubycell/c2dm/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/rubycell/c2dm/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/rubycell/c2dm/b;->c:Lcom/rubycell/c2dm/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/rubycell/c2dm/C2DMReceiver;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--->UploadRegid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rubycell/c2dm/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/adcenter/a/a;->f(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Lcom/rubycell/c/a/d;

    const-string v2, "http://xappstore.net/gameman/index.php/user/update_regid_adcenter?"

    invoke-direct {v1, v2}, Lcom/rubycell/c/a/d;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    iget-object v3, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "deviceId"

    iget-object v3, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "regId"

    iget-object v3, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    const-string v4, "com.google.android.c2dm"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "Reg_id"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "versioncode"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "platform"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/rubycell/c/a/e;->a:Lcom/rubycell/c/a/e;

    invoke-virtual {v1, v0}, Lcom/rubycell/c/a/d;->a(Lcom/rubycell/c/a/e;)V

    invoke-virtual {v1}, Lcom/rubycell/c/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rubycell/c2dm/C2DMReceiver;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--->ResponceREGID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/rubycell/d/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Z)V

    :goto_0
    invoke-static {v0}, Lcom/rubycell/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    const-string v2, "key_flurry_id"

    invoke-static {v1, v2, v0}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/rubycell/c2dm/b;->c:Lcom/rubycell/c2dm/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/c2dm/b;->c:Lcom/rubycell/c2dm/d;

    invoke-interface {v0}, Lcom/rubycell/c2dm/d;->a()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/rubycell/c2dm/b;->a:Landroid/content/Context;

    const-string v1, "Q3L9WM3GMM8WZKESQ13G"

    const-string v2, "key_flurry_id"

    invoke-static {v0, v2, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
