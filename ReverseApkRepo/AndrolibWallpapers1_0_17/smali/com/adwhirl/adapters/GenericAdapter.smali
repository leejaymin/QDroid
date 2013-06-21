.class public Lcom/adwhirl/adapters/GenericAdapter;
.super Lcom/adwhirl/adapters/AdWhirlAdapter;
.source "GenericAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    .locals 0
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/adwhirl/adapters/AdWhirlAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V

    .line 29
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 3

    .prologue
    const-string v2, "AdWhirl SDK"

    .line 33
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_0

    const-string v1, "AdWhirl SDK"

    const-string v1, "Generic notification request initiated"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/adwhirl/adapters/GenericAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 36
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_1

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlInterface:Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;

    if-eqz v1, :cond_3

    .line 42
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlInterface:Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;

    invoke-interface {v1}, Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;->adWhirlGeneric()V

    .line 48
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    invoke-virtual {v1}, Lcom/adwhirl/AdWhirlManager;->resetRollover()V

    .line 49
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 45
    :cond_3
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_2

    const-string v1, "AdWhirl SDK"

    const-string v1, "Generic notification sent, but no interface is listening"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
