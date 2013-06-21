.class Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;
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
    name = "RotateAdRunnable"
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
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    .line 343
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 346
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-eqz v0, :cond_0

    .line 347
    #calls: Lcom/adwhirl/AdWhirlLayout;->rotateAd()V
    invoke-static {v0}, Lcom/adwhirl/AdWhirlLayout;->access$2(Lcom/adwhirl/AdWhirlLayout;)V

    .line 349
    :cond_0
    return-void
.end method
