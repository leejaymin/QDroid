.class public Ledu/umich/PowerTutor/service/LogUploader;
.super Ljava/lang/Object;
.source "LogUploader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static uploadSupported()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public join()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public plug(Z)V
    .locals 0
    .parameter "plugged"

    .prologue
    .line 50
    return-void
.end method

.method public shouldUpload()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public upload(Ljava/lang/String;)V
    .locals 0
    .parameter "origFile"

    .prologue
    .line 54
    return-void
.end method
