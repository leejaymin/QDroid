.class public Lstericson/busybox/donate/jobs/InitialChecks;
.super Lstericson/busybox/donate/jobs/AsyncJob;
.source "InitialChecks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lstericson/busybox/donate/jobs/AsyncJob",
        "<",
        "Lstericson/busybox/donate/domain/Result;",
        ">;"
    }
.end annotation


# static fields
.field public static Checks:I


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/MainActivity;

.field protected view:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    sput v0, Lstericson/busybox/donate/jobs/InitialChecks;->Checks:I

    .line 11
    return-void
.end method

.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 19
    const v0, 0x7f0b0003

    invoke-direct {p0, p1, v0, v1, v1}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 20
    iput-object p1, p0, Lstericson/busybox/donate/jobs/InitialChecks;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 21
    return-void
.end method


# virtual methods
.method bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/Result;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/InitialChecks;->callback(Lstericson/busybox/donate/domain/Result;)V

    return-void
.end method

.method callback(Lstericson/busybox/donate/domain/Result;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 59
    iget-object v0, p0, Lstericson/busybox/donate/jobs/InitialChecks;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    sget v1, Lstericson/busybox/donate/jobs/InitialChecks;->Checks:I

    invoke-virtual {v0, p1, v1}, Lstericson/busybox/donate/Activity/MainActivity;->jobCallBack(Lstericson/busybox/donate/domain/Result;I)V

    .line 60
    return-void
.end method

.method bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/InitialChecks;->handle()Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method handle()Lstericson/busybox/donate/domain/Result;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v1, Lstericson/busybox/donate/domain/Result;

    invoke-direct {v1}, Lstericson/busybox/donate/domain/Result;-><init>()V

    .line 28
    .local v1, result:Lstericson/busybox/donate/domain/Result;
    sput-boolean v5, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 30
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 31
    iget-object v2, p0, Lstericson/busybox/donate/jobs/InitialChecks;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/domain/Result;->setMessage(Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    invoke-static {v4, v4}, Lstericson/busybox/donate/Common;->findBusyBoxLocations(ZZ)[Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v5}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    .line 47
    return-object v1

    .line 36
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    iget-object v2, p0, Lstericson/busybox/donate/jobs/InitialChecks;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/domain/Result;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lstericson/busybox/donate/jobs/InitialChecks;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/domain/Result;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onProgressUpdate([Ljava/lang/Object;)V

    .line 54
    return-void
.end method
