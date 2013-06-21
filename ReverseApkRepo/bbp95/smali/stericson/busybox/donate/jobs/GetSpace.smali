.class public Lstericson/busybox/donate/jobs/GetSpace;
.super Lstericson/busybox/donate/jobs/AsyncJob;
.source "GetSpace.java"


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

.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Lstericson/busybox/donate/interfaces/CallBack;)V
    .locals 2
    .parameter "activity"
    .parameter "location"
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 17
    const v0, 0x7f0b0003

    invoke-direct {p0, p1, v0, v1, v1}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 18
    iput-object p2, p0, Lstericson/busybox/donate/jobs/GetSpace;->location:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lstericson/busybox/donate/jobs/GetSpace;->cb:Lstericson/busybox/donate/interfaces/CallBack;

    .line 20
    return-void
.end method


# virtual methods
.method bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/Result;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/GetSpace;->callback(Lstericson/busybox/donate/domain/Result;)V

    return-void
.end method

.method callback(Lstericson/busybox/donate/domain/Result;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 42
    iget-object v0, p0, Lstericson/busybox/donate/jobs/GetSpace;->cb:Lstericson/busybox/donate/interfaces/CallBack;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Lstericson/busybox/donate/interfaces/CallBack;->jobCallBack(Lstericson/busybox/donate/domain/Result;I)V

    .line 43
    return-void
.end method

.method bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/GetSpace;->handle()Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method handle()Lstericson/busybox/donate/domain/Result;
    .locals 5

    .prologue
    .line 25
    new-instance v0, Lstericson/busybox/donate/domain/Result;

    invoke-direct {v0}, Lstericson/busybox/donate/domain/Result;-><init>()V

    .line 27
    .local v0, result:Lstericson/busybox/donate/domain/Result;
    iget-object v1, p0, Lstericson/busybox/donate/jobs/GetSpace;->location:Ljava/lang/String;

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->getSpace(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/domain/Result;->setSpace(F)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    .line 30
    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onProgressUpdate([Ljava/lang/Object;)V

    .line 37
    return-void
.end method
