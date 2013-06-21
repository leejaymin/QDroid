.class public final Lcom/rubycell/moregame/service/a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/service/MoregameService;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rubycell/moregame/service/MoregameService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/service/a;->a:Lcom/rubycell/moregame/service/MoregameService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/rubycell/moregame/service/a;->b:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/moregame/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/rubycell/moregame/center/n;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/c;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/service/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/rubycell/moregame/center/n;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/c;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/service/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/rubycell/moregame/service/a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->a:Lcom/rubycell/moregame/service/MoregameService;

    invoke-static {v0}, Lcom/rubycell/moregame/service/MoregameService;->a(Lcom/rubycell/moregame/service/MoregameService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "more_game_one.xml"

    iget-object v2, p0, Lcom/rubycell/moregame/service/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/rubycell/moregame/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->a:Lcom/rubycell/moregame/service/MoregameService;

    invoke-static {v0}, Lcom/rubycell/moregame/service/MoregameService;->a(Lcom/rubycell/moregame/service/MoregameService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "more_game_list.xml"

    iget-object v2, p0, Lcom/rubycell/moregame/service/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/rubycell/moregame/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/rubycell/moregame/service/a;->a:Lcom/rubycell/moregame/service/MoregameService;

    invoke-virtual {v0}, Lcom/rubycell/moregame/service/MoregameService;->stopSelf()V

    return-void
.end method
