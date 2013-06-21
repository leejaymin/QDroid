.class Lcom/rookiestudio/perfectviewer/TViewer$3;
.super Ljava/lang/Object;
.source "TViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewer;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewer$3;->this$0:Lcom/rookiestudio/perfectviewer/TViewer;

    .line 1490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer$3;->this$0:Lcom/rookiestudio/perfectviewer/TViewer;

    const-string v1, ""

    iput-object v1, v0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoStr:Ljava/lang/String;

    .line 1494
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer$3;->this$0:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1495
    return-void
.end method
