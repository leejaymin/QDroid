.class Lcom/rookiestudio/perfectviewer/TSystemUIHandler$2;
.super Ljava/lang/Object;
.source "TSystemUIHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$2;->this$0:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSystemUIHandler$2;->this$0:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    #getter for: Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->TargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;->access$2(Lcom/rookiestudio/perfectviewer/TSystemUIHandler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 30
    return-void
.end method
