.class public abstract Lcom/cocmoc/kulinglite/BaseFeedParser;
.super Ljava/lang/Object;
.source "BaseFeedParser.java"

# interfaces
.implements Lcom/cocmoc/kulinglite/FeedParser;


# static fields
.field static final ITEM:Ljava/lang/String; = "item"

.field static final LASTUPDATE:Ljava/lang/String; = "LastUpdate"

.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"

.field static final NAME:Ljava/lang/String; = "Name"

.field static final WINDDIRECTION:Ljava/lang/String; = "WindDirection"

.field static final WINDSPEED:Ljava/lang/String; = "WindSpeed"


# instance fields
.field private final feedUrl:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "feedUrl"

    .prologue
    const-string v4, "Kuling"

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_0
    const-string v1, "Kuling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - feedUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cocmoc/kulinglite/BaseFeedParser;->feedUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 27
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 28
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v1, "Kuling"

    const-string v1, " - BaseFeedParser RuntimeException(e)"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/cocmoc/kulinglite/BaseFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 36
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 37
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Kuling"

    const-string v2, " - BaseFeedParser IOException(e)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
