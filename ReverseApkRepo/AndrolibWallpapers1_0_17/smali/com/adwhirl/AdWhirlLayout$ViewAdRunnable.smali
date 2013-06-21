.class public Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;
.super Ljava/lang/Object;
.source "AdWhirlLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwhirl/AdWhirlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewAdRunnable"
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

.field private nextView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "adWhirlLayout"
    .parameter "nextView"

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    .line 328
    iput-object p2, p0, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;->nextView:Landroid/view/ViewGroup;

    .line 329
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 332
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;->nextView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/adwhirl/AdWhirlLayout;->pushSubView(Landroid/view/ViewGroup;)V

    .line 335
    :cond_0
    return-void
.end method
