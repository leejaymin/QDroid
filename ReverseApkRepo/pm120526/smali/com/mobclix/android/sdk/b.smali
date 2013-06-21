.class final Lcom/mobclix/android/sdk/b;
.super Landroid/os/AsyncTask;


# static fields
.field private static b:Ljava/lang/String;

.field private static d:Z


# instance fields
.field a:Lcom/mobclix/android/sdk/e;

.field private c:Lcom/mobclix/android/sdk/ce;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MobclixConfig"

    sput-object v0, Lcom/mobclix/android/sdk/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobclix/android/sdk/b;->d:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {}, Lcom/mobclix/android/sdk/ce;->a()Lcom/mobclix/android/sdk/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v2, "ConfigServer"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "ConfigServer"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "?p=android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&rt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&rtv="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&a="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&m="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&v="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&dm="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&dv="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&hwdm="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&g="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->n()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&de="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/e;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "&ll="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, "offlineSessions"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "&off="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "offlineSessions"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "totalSessionTime"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    const-string v0, "&st="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "totalSessionTime"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    :try_start_4
    const-string v0, "&it=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->s:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "&pd="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v2, v2, Lcom/mobclix/android/sdk/e;->s:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v0, "&mcc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&mnc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/e;->t:Z

    if-eqz v0, :cond_5

    const-string v0, "&new=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    :try_start_5
    const-string v0, "MCReferralData"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MCReferralData"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "&r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method private varargs a()Lorg/json/JSONArray;
    .locals 15

    sget-boolean v0, Lcom/mobclix/android/sdk/b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobclix/android/sdk/b;->d:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/e;->D()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mobclix/android/sdk/ce;->a()Lcom/mobclix/android/sdk/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    sget-object v1, Lcom/mobclix/android/sdk/ce;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v2, "config"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    :goto_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v2, "update_session"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/e;->A()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v3, "update"

    invoke-virtual {v2, v0, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v3, "parse_cache"

    invoke-virtual {v2, v0, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v3, "load_misc_settings"

    invoke-virtual {v2, v0, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    const-string v2, "deviceId"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "deviceId"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v3, v3, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iput-object v2, v3, Lcom/mobclix/android/sdk/e;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    const-string v2, "passiveSessionTimeout"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v3, "passiveSessionTimeout"

    invoke-static {v3}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/mobclix/android/sdk/e;->m:I

    :cond_3
    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v3, "load_adunits"

    invoke-virtual {v2, v0, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mobclix/android/sdk/e;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_3
    if-lt v5, v4, :cond_b

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    move v14, v2

    move-object v2, v1

    move v1, v14

    :goto_4
    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget v3, v3, Lcom/mobclix/android/sdk/e;->n:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    move-object v1, v0

    move-object v0, v2

    :goto_5
    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget v2, v2, Lcom/mobclix/android/sdk/e;->n:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v3, "parse_cache"

    invoke-virtual {v2, v1, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v3, "load_urls"

    invoke-virtual {v2, v1, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigServer"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v3, "ConfigServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mobclix/android/sdk/e;->g:Ljava/lang/String;

    :cond_4
    const-string v2, "AdServer"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v3, "AdServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mobclix/android/sdk/e;->f:Ljava/lang/String;

    :cond_5
    const-string v2, "AnalyticsServer"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v3, "AnalyticsServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mobclix/android/sdk/e;->h:Ljava/lang/String;

    :cond_6
    const-string v2, "VcServer"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v3, "VcServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mobclix/android/sdk/e;->i:Ljava/lang/String;

    :cond_7
    const-string v2, "FeedbackServer"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v3, "FeedbackServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mobclix/android/sdk/e;->j:Ljava/lang/String;

    :cond_8
    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v3, 0x1

    iput v3, v2, Lcom/mobclix/android/sdk/e;->n:I

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mobclix/android/sdk/e;->o:Z

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    sget-object v2, Lcom/mobclix/android/sdk/ce;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mobclix/android/sdk/b;->d:Z

    goto/16 :goto_0

    :cond_a
    :try_start_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mobclix/android/sdk/e;->t:Z

    const-string v2, "deviceId"

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v3, v3, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mobclix/android/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :cond_b
    aget-object v6, v3, v5

    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    new-instance v7, Lcom/mobclix/android/sdk/o;

    invoke-direct {v7}, Lcom/mobclix/android/sdk/o;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v6}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/mobclix/android/sdk/b;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "CustomAdUrl"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/o;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "CustomAdUrl"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mobclix/android/sdk/o;->a(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-static {v6}, Lcom/mobclix/android/sdk/e;->j(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "attempt_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v4, "build_request"

    invoke-virtual {v3, v0, v4}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    const/4 v3, 0x1

    :goto_7
    invoke-direct {p0, v3}, Lcom/mobclix/android/sdk/b;->a(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v3, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v4, "send_request"

    invoke-virtual {v3, v0, v4}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x0

    :try_start_4
    new-instance v5, Lcom/mobclix/android/sdk/l;

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->e:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/mobclix/android/sdk/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/l;->a()Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_17

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x1f40

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    :goto_8
    if-nez v3, :cond_12

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v3, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v6, "handle_response"

    invoke-virtual {v3, v0, v6}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    move-result v3

    if-nez v3, :cond_18

    :try_start_6
    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v6, "decode_json"

    invoke-virtual {v3, v0, v6}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v7, "save_json"

    invoke-virtual {v6, v0, v7}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v7, "raw_config_json"

    sget-object v8, Lcom/mobclix/android/sdk/ce;->a:Ljava/lang/String;

    invoke-virtual {v6, v4, v7, v8}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v6, "decoded_config_json"

    sget-object v7, Lcom/mobclix/android/sdk/ce;->a:Ljava/lang/String;

    invoke-virtual {v4, v3, v6, v7}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v4, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v6, "load_config"

    invoke-virtual {v4, v0, v6}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "urls"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v7, "config"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/mobclix/android/sdk/e;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v7, "ads"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/mobclix/android/sdk/e;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v7, "analytics"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/mobclix/android/sdk/e;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v7, "vc"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/mobclix/android/sdk/e;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v7, "feedback"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/mobclix/android/sdk/e;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v7, "debug"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/mobclix/android/sdk/e;->k:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    :try_start_7
    iget-object v4, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const-string v6, "passive_session_timeout"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    iput v6, v4, Lcom/mobclix/android/sdk/e;->m:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    :goto_9
    :try_start_8
    iget-object v4, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    const-string v6, "set_default_values"

    invoke-virtual {v4, v0, v6}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    move-result-object v4

    :try_start_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ConfigServer"

    iget-object v7, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v7, v7, Lcom/mobclix/android/sdk/e;->g:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdServer"

    iget-object v7, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v7, v7, Lcom/mobclix/android/sdk/e;->f:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AnalyticsServer"

    iget-object v7, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v7, v7, Lcom/mobclix/android/sdk/e;->h:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VcServer"

    iget-object v7, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v7, v7, Lcom/mobclix/android/sdk/e;->i:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FeedbackServer"

    iget-object v7, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v7, v7, Lcom/mobclix/android/sdk/e;->j:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "passiveSessionTimeout"

    iget-object v7, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget v7, v7, Lcom/mobclix/android/sdk/e;->m:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_units"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    move-result v8

    if-lt v7, v8, :cond_13

    :try_start_a
    const-string v0, "debug_config"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/mobclix/android/sdk/ce;->c:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_b
    if-lt v10, v9, :cond_14

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->a(Ljava/util/List;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v9}, Lcom/mobclix/android/sdk/e;->a(Ljava/util/Map;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :goto_d
    :try_start_b
    const-string v0, "app_alerts"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-result-object v0

    :goto_e
    :try_start_c
    const-string v2, "native_urls"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    move-result v7

    if-lt v3, v7, :cond_16

    :goto_10
    :try_start_d
    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v2, v2, Lcom/mobclix/android/sdk/e;->s:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v2, "deviceId"

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v3, v3, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v2, "offlineSessions"

    const-string v3, "0"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalSessionTime"

    const-string v3, "0"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalIdleTime"

    const-string v3, "0"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/mobclix/android/sdk/e;->a(Ljava/util/Map;)V

    const-string v2, "MCReferralData"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "MCReferralData"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->j(Ljava/lang/String;)V

    :cond_10
    iget-object v2, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v4}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v2

    :try_start_e
    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v3, v2}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/mobclix/android/sdk/e;->o:Z

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v4, 0x1

    iput v4, v3, Lcom/mobclix/android/sdk/e;->n:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    move-object v3, v2

    move-object v2, v0

    move-object v0, v5

    :goto_11
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move-object v0, v2

    move-object v2, v3

    :goto_12
    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v3, v2}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->c:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v3, v2}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-gt v1, v3, :cond_19

    add-int/lit8 v1, v1, 0x1

    move-object v14, v0

    move-object v0, v2

    move-object v2, v14

    goto/16 :goto_4

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_12
    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    move-result-object v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    goto/16 :goto_8

    :cond_13
    :try_start_11
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/mobclix/android/sdk/b;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_14
    :try_start_12
    aget-object v11, v8, v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "debug_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    :cond_15
    :try_start_13
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mobclix/android/sdk/e;->e:Ljava/util/HashMap;

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "debug_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_c

    :catch_2
    move-exception v0

    :try_start_14
    sget-object v10, Lcom/mobclix/android/sdk/b;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ERROR: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v0, v2

    goto/16 :goto_e

    :cond_16
    :try_start_15
    iget-object v7, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    iget-object v7, v7, Lcom/mobclix/android/sdk/e;->l:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :catch_5
    move-exception v2

    move-object v2, v4

    :goto_14
    :try_start_16
    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v4, -0x1

    iput v4, v3, Lcom/mobclix/android/sdk/e;->n:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    move-object v3, v2

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_11

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v5, -0x1

    iput v5, v3, Lcom/mobclix/android/sdk/e;->n:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    move-object v3, v0

    move-object v0, v4

    goto/16 :goto_11

    :catch_6
    move-exception v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v5

    :goto_15
    :try_start_18
    iget-object v4, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v5, -0x1

    iput v5, v4, Lcom/mobclix/android/sdk/e;->n:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_12

    :catch_7
    move-exception v0

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v4, -0x1

    iput v4, v0, Lcom/mobclix/android/sdk/e;->n:I

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_16
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    :goto_17
    throw v0

    :catch_8
    move-exception v1

    iget-object v1, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v2, -0x1

    iput v2, v1, Lcom/mobclix/android/sdk/e;->n:I

    goto :goto_17

    :catch_9
    move-exception v0

    iget-object v0, p0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    const/4 v4, -0x1

    iput v4, v0, Lcom/mobclix/android/sdk/e;->n:I

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_12

    :catchall_1
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto :goto_16

    :catch_a
    move-exception v3

    move-object v3, v0

    move-object v0, v4

    goto :goto_15

    :catch_b
    move-exception v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_15

    :catch_c
    move-exception v3

    goto :goto_14

    :catch_d
    move-exception v3

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    goto :goto_14

    :catch_e
    move-exception v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_14

    :catch_f
    move-exception v2

    goto/16 :goto_10

    :catch_10
    move-exception v8

    goto/16 :goto_13

    :catch_11
    move-exception v4

    goto/16 :goto_9

    :catch_12
    move-exception v1

    goto/16 :goto_1

    :cond_18
    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_11

    :cond_19
    move-object v1, v2

    goto/16 :goto_5
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 13

    const-wide/16 v7, 0x3e8

    const-wide/16 v5, -0x1

    const-string v0, "size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/o;

    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/o;->a(Z)V

    const-string v1, "refresh"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    invoke-virtual {v0, v5, v6}, Lcom/mobclix/android/sdk/o;->a(J)V

    :goto_0
    const-string v1, "autoplay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/o;->b(Z)V

    const-string v1, "autoplay_interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {v0, v5, v6}, Lcom/mobclix/android/sdk/o;->b(J)V

    :goto_1
    const-string v1, "rm_require_user"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/o;->c(Z)V

    :try_start_0
    const-string v1, "open_allocs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/mobclix/android/sdk/e;->b:[Ljava/lang/String;

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    move v6, v1

    :goto_2
    if-lt v6, v5, :cond_2

    :goto_3
    :try_start_1
    const-string v1, "customAdUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/o;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/o;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    return-void

    :cond_0
    const-string v1, "refresh"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Lcom/mobclix/android/sdk/o;->a(J)V

    goto :goto_0

    :cond_1
    const-string v1, "autoplay_interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Lcom/mobclix/android/sdk/o;->b(J)V

    goto :goto_1

    :cond_2
    :try_start_2
    aget-object v7, v4, v6

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :cond_3
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/mobclix/android/sdk/o;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_4
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_5
    :try_start_4
    iget-object v1, v0, Lcom/mobclix/android/sdk/o;->a:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_6
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "CustomAdUrl"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->j(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/o;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/o;->a(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/mobclix/android/sdk/b;->a()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 18

    check-cast p1, Lorg/json/JSONArray;

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MCAppAlert"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const/4 v10, 0x0

    :try_start_1
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result v6

    :goto_2
    const/4 v10, 0x1

    :try_start_2
    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v7

    move-wide/from16 v16, v7

    move v8, v6

    move-wide/from16 v6, v16

    :goto_3
    :try_start_3
    const-string v9, "title"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "null"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :try_start_4
    const-string v11, "message"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "null"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const/4 v10, 0x0

    :cond_5
    :goto_4
    const/4 v11, 0x0

    :try_start_5
    const-string v12, "max_displays"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result v11

    :goto_5
    if-eqz v11, :cond_6

    if-ge v8, v11, :cond_2

    :cond_6
    const-wide/16 v11, 0x0

    :try_start_6
    const-string v13, "display_interval"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v11

    int-to-long v11, v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    :goto_6
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-eqz v13, :cond_7

    add-long/2addr v6, v11

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v6, v6, v11

    if-gez v6, :cond_2

    :cond_7
    const-string v6, "target_versions"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v16, v11

    move v11, v7

    move/from16 v7, v16

    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v12

    if-lt v7, v12, :cond_14

    if-eqz v11, :cond_2

    const/4 v6, 0x0

    :try_start_8
    const-string v7, "action_button"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const/4 v6, 0x0

    :cond_9
    :goto_8
    const/4 v7, 0x0

    :try_start_9
    const-string v11, "action_url"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "null"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    const/4 v7, 0x0

    :cond_b
    :goto_9
    if-eqz v7, :cond_c

    if-eqz v6, :cond_2

    :cond_c
    const/4 v11, 0x0

    :try_start_a
    const-string v12, "dismiss_button"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v4

    if-eqz v4, :cond_d

    :try_start_b
    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "null"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result v11

    if-eqz v11, :cond_e

    :cond_d
    const/4 v4, 0x0

    :cond_e
    :goto_a
    if-nez v7, :cond_f

    if-eqz v4, :cond_2

    :cond_f
    :try_start_c
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/mobclix/android/sdk/e;->a()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz v10, :cond_10

    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_10
    if-eqz v7, :cond_11

    new-instance v9, Lcom/mobclix/android/sdk/c;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/mobclix/android/sdk/c;-><init>(Lcom/mobclix/android/sdk/b;Ljava/lang/Object;)V

    invoke-virtual {v11, v6, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_11
    if-eqz v4, :cond_12

    new-instance v6, Lcom/mobclix/android/sdk/d;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/d;-><init>(Lcom/mobclix/android/sdk/b;)V

    invoke-virtual {v11, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_12
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    add-int/lit8 v4, v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MCAppAlert"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mobclix/android/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :catch_1
    move-exception v9

    :cond_13
    move-wide/from16 v16, v7

    move v8, v6

    move-wide/from16 v6, v16

    goto/16 :goto_3

    :cond_14
    :try_start_d
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/mobclix/android/sdk/e;->h()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-result v12

    if-eqz v12, :cond_15

    const/4 v11, 0x1

    :cond_15
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :catch_2
    move-exception v4

    move-object v4, v11

    goto/16 :goto_a

    :catch_3
    move-exception v11

    goto/16 :goto_a

    :catch_4
    move-exception v11

    goto/16 :goto_9

    :catch_5
    move-exception v7

    goto/16 :goto_8

    :catch_6
    move-exception v12

    goto :goto_b

    :catch_7
    move-exception v13

    goto/16 :goto_6

    :catch_8
    move-exception v12

    goto/16 :goto_5

    :catch_9
    move-exception v11

    goto/16 :goto_4

    :catch_a
    move-exception v10

    goto/16 :goto_2
.end method
