.class public final Lcom/rubycell/checkupdate/a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/rubycell/checkupdate/UpdateService;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/rubycell/checkupdate/UpdateService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/checkupdate/a;->a:Lcom/rubycell/checkupdate/UpdateService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/checkupdate/a;->a:Lcom/rubycell/checkupdate/UpdateService;

    iget-object v0, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/checkupdate/UpdateService;->a(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/rubycell/checkupdate/UpdateService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAllowUpdate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rubycell/c/a/d;

    const-string v3, "http://xappstore.net/gameman/index.php/user/check_update_ad?"

    invoke-direct {v2, v3}, Lcom/rubycell/c/a/d;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v2, v3, v0}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "platformID"

    const-string v3, "Android"

    invoke-virtual {v2, v0, v3}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-virtual {v2, v0, v1}, Lcom/rubycell/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/rubycell/c/a/e;->a:Lcom/rubycell/c/a/e;

    invoke-virtual {v2, v0}, Lcom/rubycell/c/a/d;->a(Lcom/rubycell/c/a/e;)V

    invoke-virtual {v2}, Lcom/rubycell/c/a/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rubycell/checkupdate/UpdateService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update Responce="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/rubycell/d/a;->d(Ljava/lang/String;)Lcom/rubycell/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/rubycell/d/b;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "versionAd"

    invoke-static {v1, v3, v2}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/rubycell/d/b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_admob_id"

    invoke-static {v1, v3, v2}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/rubycell/d/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_mobclix_id"

    invoke-static {v1, v3, v2}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/rubycell/d/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_flurry_id"

    invoke-static {v1, v3, v2}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/rubycell/d/b;->e()I

    move-result v2

    const-string v3, "key_network_selectedad"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubycell/checkupdate/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/rubycell/d/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_publisher"

    invoke-static {v1, v2, v0}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rubycell/checkupdate/UpdateService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update Responce Error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/rubycell/checkupdate/a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rubycell/checkupdate/a;->a:Lcom/rubycell/checkupdate/UpdateService;

    invoke-virtual {v0}, Lcom/rubycell/checkupdate/UpdateService;->stopSelf()V

    return-void
.end method
