.class public Liv;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityAbout;)V
    .locals 0

    iput-object p1, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const-string v0, "text:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityAbout;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const-string v0, "text:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_source_license"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x8000

    :try_start_0
    new-array v0, v0, [B

    iget-object v1, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    invoke-virtual {v1}, Lcom/mxtech/videoplayer/ActivityAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lns;->open_source_license:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1, v0}, Lei;->癤욱븳援(Ljava/io/InputStream;[B)I

    move-result v2

    iget-object v3, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    iget-object v4, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    iget-object v4, v4, Lcom/mxtech/videoplayer/ActivityAbout;->癤욱븳援:Lfm;

    sget v5, Lnt;->cfg_open_source_license:I

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v2}, Ljava/lang/String;-><init>([BII)V

    const/4 v0, 0x1

    invoke-static {v3, v4, v5, v6, v0}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;ILjava/lang/CharSequence;Z)Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    const-string v1, "change_log"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    iget-object v1, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityAbout;->癤욱븳援:Lfm;

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/app/Activity;Lfm;)V

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Liv;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityAbout;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/ActivityAbout;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
