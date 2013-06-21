.class public Lcom/rookiestudio/perfectviewer/TSystemUIHandler;
.super Ljava/lang/Object;
.source "TSystemUIHandler.java"


# instance fields
.field private DelayHideUI:Ljava/lang/Runnable;

.field private TargetView:Landroid/view/View;

.field private UIHandler:Landroid/os/Handler;

.field private mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->TargetView:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->UIHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$1;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$1;-><init>(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 27
    new-instance v0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$2;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$2;-><init>(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->DelayHideUI:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->UIHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->TargetView:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->TargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 24
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->TargetView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->UIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->DelayHideUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 8
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->TargetView:Landroid/view/View;

    return-object v0
.end method
