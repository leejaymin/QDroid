.class Lcom/rookiestudio/perfectviewer/TSystemUIHandler$1;
.super Ljava/lang/Object;
.source "TSystemUIHandler.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TSystemUIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$1;->this$0:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 14
    if-nez p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$1;->this$0:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    #getter for: Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->UIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->access$0(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$1;->this$0:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    #getter for: Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->DelayHideUI:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->access$1(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    :cond_0
    return-void
.end method
