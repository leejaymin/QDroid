.class public final Lcom/rubycell/e/k;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    check-cast p1, Lcom/rubycell/pianisthd/SongListActivity;

    iput-object p1, p0, Lcom/rubycell/e/k;->a:Lcom/rubycell/pianisthd/SongListActivity;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/e/k;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, p0, Lcom/rubycell/e/k;->a:Lcom/rubycell/pianisthd/SongListActivity;

    const v2, 0x7f07002f

    invoke-virtual {v1, v2}, Lcom/rubycell/pianisthd/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/rubycell/e/k;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/e/k;->a:Lcom/rubycell/pianisthd/SongListActivity;

    new-instance v1, Lcom/rubycell/e/l;

    invoke-direct {v1, p0}, Lcom/rubycell/e/l;-><init>(Lcom/rubycell/e/k;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
