.class public abstract Lcom/scoreloop/client/android/core/util/InternalFileStore;
.super Lcom/scoreloop/client/android/core/util/FileStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/scoreloop/client/android/core/util/JSONSerializable;",
        ">",
        "Lcom/scoreloop/client/android/core/util/FileStore",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/FileStore;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final b()Ljava/io/File;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/InternalFileStore;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/InternalFileStore;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/InternalFileStore;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/InternalFileStore;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/InternalFileStore;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected final i()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/InternalFileStore;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/InternalFileStore;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
