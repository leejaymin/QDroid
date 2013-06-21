.class public final Lcom/rubycell/moregame/center/l;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/rubycell/moregame/center/l;->b:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/moregame/center/l;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/more_game_one.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/rubycell/moregame/center/n;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/c;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    iget-object v2, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->b(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Lcom/rubycell/b/a/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubycell/b/a/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a(Lcom/rubycell/moregame/center/MoreGameOneActivity;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "more_game_one.xml"

    invoke-static {v1, v2, v0}, Lcom/rubycell/moregame/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    iget-object v2, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->b(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Lcom/rubycell/b/a/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubycell/b/a/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a(Lcom/rubycell/moregame/center/MoreGameOneActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

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

    invoke-direct {p0}, Lcom/rubycell/moregame/center/l;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->c(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->d(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    iget-object v0, v0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a:Lcom/rubycell/moregame/center/MoreGameView;

    iget-object v1, p0, Lcom/rubycell/moregame/center/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/rubycell/moregame/center/l;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->d(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/moregame/a/b;->b(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/MoreGameView;->setListMoregameItem(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
