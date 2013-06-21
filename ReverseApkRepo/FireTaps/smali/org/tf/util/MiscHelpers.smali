.class public Lorg/tf/util/MiscHelpers;
.super Ljava/lang/Object;
.source "MiscHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final UriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .parameter "uri"

    .prologue
    .line 30
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 33
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final cleanup(Ljava/io/File;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 39
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 40
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 47
    :cond_0
    return-void

    .line 40
    :cond_1
    aget-object v0, v1, v3

    .line 41
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    invoke-static {v0}, Lorg/tf/util/MiscHelpers;->cleanup(Ljava/io/File;)V

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
