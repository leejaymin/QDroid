.class public Lcom/kavsdk/shared/FsExplorer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native free()V
.end method

.method private native makeListNative(Ljava/lang/String;[Ljava/lang/String;Z)V
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/kavsdk/shared/FsExplorer;->mContext:I

    if-eqz v0, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/kavsdk/shared/FsExplorer;->free()V

    .line 19
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kavsdk/shared/FsExplorer;->makeListNative(Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v1, "KAVSDK"

    const-string v2, "FsExplorer: IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    .line 26
    const-string v1, "KAVSDK"

    const-string v2, "FsExplorer: OutOfMemoryError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 29
    :catch_2
    move-exception v0

    .line 30
    const-string v1, "KAVSDK"

    const-string v2, "FsExplorer: Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kavsdk/shared/FsExplorer;->free()V

    .line 40
    return-void
.end method

.method public native getDirList()[Ljava/lang/String;
.end method

.method public native getFileList()[Ljava/lang/String;
.end method
