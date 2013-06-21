.class public Lccc71/pmw/lib/pmw_tweaker_recorder;
.super Lccc71/utils/ccc71_shortcuts;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lccc71/utils/ccc71_shortcuts;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lccc71/pmw/lib/c;->am:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lccc71/pmw/lib/g;->bD:I

    return v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lccc71/utils/ccc71_shortcuts;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_tweaker_recorder;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaker_recorder;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_tweaker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v1, "ccc71.pmw.RECORDER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_tweaker_recorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaker_recorder;->finish()V

    .line 46
    :cond_0
    return-void
.end method
