.class public final Lcom/rubycell/moregame/center/h;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/MoreGameListActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/rubycell/moregame/center/MoreGameListActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/rubycell/moregame/center/h;->b:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/moregame/center/h;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameListActivity;->a(Lcom/rubycell/moregame/center/MoreGameListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/more_game_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/rubycell/moregame/center/n;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/c;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    iget-object v2, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameListActivity;->b(Lcom/rubycell/moregame/center/MoreGameListActivity;)Lcom/rubycell/b/a/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubycell/b/a/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/moregame/center/MoreGameListActivity;->a(Lcom/rubycell/moregame/center/MoreGameListActivity;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameListActivity;->a(Lcom/rubycell/moregame/center/MoreGameListActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "more_game_list.xml"

    invoke-static {v1, v2, v0}, Lcom/rubycell/moregame/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    iget-object v2, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameListActivity;->b(Lcom/rubycell/moregame/center/MoreGameListActivity;)Lcom/rubycell/b/a/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubycell/b/a/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->a(Lcom/rubycell/moregame/center/MoreGameListActivity;Ljava/util/ArrayList;)V
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

    invoke-direct {p0}, Lcom/rubycell/moregame/center/h;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->c(Lcom/rubycell/moregame/center/MoreGameListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->d(Lcom/rubycell/moregame/center/MoreGameListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    new-instance v1, Lcom/rubycell/moregame/center/a;

    iget-object v2, p0, Lcom/rubycell/moregame/center/h;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/rubycell/moregame/center/h;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v4}, Lcom/rubycell/moregame/center/MoreGameListActivity;->d(Lcom/rubycell/moregame/center/MoreGameListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/rubycell/moregame/a/b;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/rubycell/moregame/center/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/rubycell/moregame/center/MoreGameListActivity;->a:Lcom/rubycell/moregame/center/a;

    iget-object v0, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    iget-object v0, v0, Lcom/rubycell/moregame/center/MoreGameListActivity;->a:Lcom/rubycell/moregame/center/a;

    iget-object v1, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameListActivity;->e(Lcom/rubycell/moregame/center/MoreGameListActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/a;->a(Z)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-static {v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->f(Lcom/rubycell/moregame/center/MoreGameListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/moregame/center/h;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    iget-object v1, v1, Lcom/rubycell/moregame/center/MoreGameListActivity;->a:Lcom/rubycell/moregame/center/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
