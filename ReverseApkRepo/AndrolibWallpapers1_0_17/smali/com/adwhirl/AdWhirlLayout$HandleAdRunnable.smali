.class Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;
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
    name = "HandleAdRunnable"
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


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;)V
    .locals 1
    .parameter "adWhirlLayout"

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    .line 312
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 315
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-eqz v0, :cond_0

    .line 316
    #calls: Lcom/adwhirl/AdWhirlLayout;->handleAd()V
    invoke-static {v0}, Lcom/adwhirl/AdWhirlLayout;->access$3(Lcom/adwhirl/AdWhirlLayout;)V

    .line 318
    :cond_0
    return-void
.end method
