.class Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "p"

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;->ctx:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;->path:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;->doInBackground([Ljava/net/URL;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Void;
    .locals 3
    .parameter "urls"

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;->path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cocmoc/kulinglite/Utils;->WriteToSD(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method
