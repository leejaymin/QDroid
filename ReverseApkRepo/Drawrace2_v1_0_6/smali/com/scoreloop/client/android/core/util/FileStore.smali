.class public abstract Lcom/scoreloop/client/android/core/util/FileStore;
.super Lcom/scoreloop/client/android/core/util/BaseStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/scoreloop/client/android/core/util/JSONSerializable;",
        ">",
        "Lcom/scoreloop/client/android/core/util/BaseStore",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/BaseStore;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private a([B)Z
    .locals 3
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/FileStore;->i()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    .line 103
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 105
    :cond_1
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 106
    if-eqz v0, :cond_2

    .line 112
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 115
    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 110
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_3
    if-eqz v1, :cond_3

    .line 112
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    :cond_3
    :goto_4
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 110
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3
.end method

.method private j()[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 55
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/FileStore;->h()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 58
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 61
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 62
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    :goto_1
    if-eqz v1, :cond_0

    .line 70
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    :cond_0
    :goto_2
    return-object v0

    .line 64
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 68
    if-eqz v1, :cond_0

    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .line 68
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_2

    .line 70
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 73
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 68
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 66
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    invoke-interface {p1}, Lcom/scoreloop/client/android/core/util/JSONSerializable;->b_()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/FileStore;->e()Lcom/scoreloop/client/android/core/util/Cryptifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/FileStore;->a([B)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected abstract b()Ljava/io/File;
.end method

.method public final f()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/FileStore;->b()Ljava/io/File;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/FileStore;->j()[B

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/FileStore;->e()Lcom/scoreloop/client/android/core/util/Cryptifier;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/FileStore;->c()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v1

    .line 42
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/scoreloop/client/android/core/util/JSONSerializable;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 43
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected abstract h()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method protected abstract i()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
