.class Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;
.super Ljava/lang/Thread;
.source "AdMobLocalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdMobLocalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitLocalizerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admob/android/ads/AdMobLocalizer;


# direct methods
.method private constructor <init>(Lcom/admob/android/ads/AdMobLocalizer;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;->this$0:Lcom/admob/android/ads/AdMobLocalizer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/admob/android/ads/AdMobLocalizer;Lcom/admob/android/ads/AdMobLocalizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;-><init>(Lcom/admob/android/ads/AdMobLocalizer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-string v14, "AdMob SDK"

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/admob/android/ads/AdMobLocalizer;->access$100()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v11, p0, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;->this$0:Lcom/admob/android/ads/AdMobLocalizer;

    #getter for: Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;
    invoke-static {v11}, Lcom/admob/android/ads/AdMobLocalizer;->access$200(Lcom/admob/android/ads/AdMobLocalizer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {}, Lcom/admob/android/ads/AdMobLocalizer;->access$300()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 187
    .local v9, urlConnection:Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 190
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 193
    .local v4, is:Ljava/io/BufferedInputStream;
    iget-object v11, p0, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;->this$0:Lcom/admob/android/ads/AdMobLocalizer;

    #getter for: Lcom/admob/android/ads/AdMobLocalizer;->context:Landroid/content/Context;
    invoke-static {v11}, Lcom/admob/android/ads/AdMobLocalizer;->access$500(Lcom/admob/android/ads/AdMobLocalizer;)Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lcom/admob/android/ads/AdMobLocalizer;->access$400()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 195
    .local v2, dir:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v11, "20090728"

    invoke-direct {v10, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .local v10, versionedDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 198
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 202
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;->this$0:Lcom/admob/android/ads/AdMobLocalizer;

    #getter for: Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;
    invoke-static {v12}, Lcom/admob/android/ads/AdMobLocalizer;->access$200(Lcom/admob/android/ads/AdMobLocalizer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/admob/android/ads/AdMobLocalizer;->access$300()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v6, outputFile:Ljava/io/File;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v5, os:Ljava/io/BufferedOutputStream;
    const/16 v11, 0x200

    :try_start_1
    new-array v0, v11, [B

    .line 208
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 209
    .local v1, bytes_read:I
    :goto_0
    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v4, v0, v11, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_2

    .line 212
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    .end local v0           #buffer:[B
    .end local v1           #bytes_read:I
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #is:Ljava/io/BufferedInputStream;
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .end local v6           #outputFile:Ljava/io/File;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlConnection:Ljava/net/URLConnection;
    .end local v10           #versionedDir:Ljava/io/File;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 224
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "AdMob SDK"

    const/4 v11, 0x3

    invoke-static {v14, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 226
    const-string v11, "AdMob SDK"

    const-string v11, "Could not get localized strings from the AdMob servers."

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 218
    .restart local v0       #buffer:[B
    .restart local v1       #bytes_read:I
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    .restart local v6       #outputFile:Ljava/io/File;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlConnection:Ljava/net/URLConnection;
    .restart local v10       #versionedDir:Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
