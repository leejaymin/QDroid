.class public Lstericson/busybox/donate/jobs/GetLocations;
.super Lstericson/busybox/donate/jobs/AsyncJob;
.source "GetLocations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lstericson/busybox/donate/jobs/AsyncJob",
        "<",
        "Lstericson/busybox/donate/domain/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private cb:Lstericson/busybox/donate/interfaces/CallBack;

.field private single:Z


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;Lstericson/busybox/donate/interfaces/CallBack;Z)V
    .locals 2
    .parameter "activity"
    .parameter "cb"
    .parameter "single"

    .prologue
    const/4 v1, 0x0

    .line 16
    const v0, 0x7f0b0003

    invoke-direct {p0, p1, v0, v1, v1}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 17
    iput-object p2, p0, Lstericson/busybox/donate/jobs/GetLocations;->cb:Lstericson/busybox/donate/interfaces/CallBack;

    .line 18
    return-void
.end method


# virtual methods
.method bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/Result;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/GetLocations;->callback(Lstericson/busybox/donate/domain/Result;)V

    return-void
.end method

.method callback(Lstericson/busybox/donate/domain/Result;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 40
    iget-object v0, p0, Lstericson/busybox/donate/jobs/GetLocations;->cb:Lstericson/busybox/donate/interfaces/CallBack;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lstericson/busybox/donate/interfaces/CallBack;->jobCallBack(Lstericson/busybox/donate/domain/Result;I)V

    .line 41
    return-void
.end method

.method bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/GetLocations;->handle()Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method handle()Lstericson/busybox/donate/domain/Result;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lstericson/busybox/donate/domain/Result;

    invoke-direct {v0}, Lstericson/busybox/donate/domain/Result;-><init>()V

    .line 25
    .local v0, result:Lstericson/busybox/donate/domain/Result;
    const/4 v1, 0x0

    iget-boolean v2, p0, Lstericson/busybox/donate/jobs/GetLocations;->single:Z

    invoke-static {v1, v2}, Lstericson/busybox/donate/Common;->findBusyBoxLocations(ZZ)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/domain/Result;->setLocations([Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    .line 28
    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onProgressUpdate([Ljava/lang/Object;)V

    .line 35
    return-void
.end method
