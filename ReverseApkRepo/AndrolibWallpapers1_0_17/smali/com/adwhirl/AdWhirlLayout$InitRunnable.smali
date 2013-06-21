.class Lcom/adwhirl/AdWhirlLayout$InitRunnable;
.super Ljava/lang/Object;
.source "AdWhirlLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwhirl/AdWhirlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitRunnable"
.end annotation


# instance fields
.field private adWhirlLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adwhirl/AdWhirlLayout;",
            ">;"
        }
    .end annotation
.end field

.field private keyAdWhirl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Ljava/lang/String;)V
    .locals 1
    .parameter "adWhirlLayout"
    .parameter "keyAdWhirl"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout$InitRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    .line 273
    iput-object p2, p0, Lcom/adwhirl/AdWhirlLayout$InitRunnable;->keyAdWhirl:Ljava/lang/String;

    .line 274
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 277
    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout$InitRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adwhirl/AdWhirlLayout;

    .line 278
    .local v1, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-eqz v1, :cond_0

    .line 279
    iget-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 280
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 303
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    iget-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    if-nez v2, :cond_2

    .line 285
    new-instance v2, Lcom/adwhirl/AdWhirlManager;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout$InitRunnable;->keyAdWhirl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/adwhirl/AdWhirlManager;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    .line 288
    :cond_2
    #getter for: Lcom/adwhirl/AdWhirlLayout;->hasWindow:Z
    invoke-static {v1}, Lcom/adwhirl/AdWhirlLayout;->access$0(Lcom/adwhirl/AdWhirlLayout;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 289
    const/4 v2, 0x0

    #setter for: Lcom/adwhirl/AdWhirlLayout;->isScheduled:Z
    invoke-static {v1, v2}, Lcom/adwhirl/AdWhirlLayout;->access$1(Lcom/adwhirl/AdWhirlLayout;Z)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    invoke-virtual {v2}, Lcom/adwhirl/AdWhirlManager;->fetchConfig()V

    .line 294
    iget-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    invoke-virtual {v2}, Lcom/adwhirl/AdWhirlManager;->getExtra()Lcom/adwhirl/obj/Extra;

    move-result-object v2

    iput-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    .line 296
    iget-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    if-nez v2, :cond_4

    .line 297
    iget-object v2, v1, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 300
    :cond_4
    #calls: Lcom/adwhirl/AdWhirlLayout;->rotateAd()V
    invoke-static {v1}, Lcom/adwhirl/AdWhirlLayout;->access$2(Lcom/adwhirl/AdWhirlLayout;)V

    goto :goto_0
.end method
