.class Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;
.super Ljava/util/TimerTask;
.source "TViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TUpdateTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewer;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;->this$0:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;->this$0:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateClock()V

    .line 91
    return-void
.end method
