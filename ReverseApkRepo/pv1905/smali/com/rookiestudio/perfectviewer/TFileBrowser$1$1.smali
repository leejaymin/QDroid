.class Lcom/rookiestudio/perfectviewer/TFileBrowser$1$1;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rookiestudio/perfectviewer/TFileBrowser$1;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1$1;->this$1:Lcom/rookiestudio/perfectviewer/TFileBrowser$1;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TSlideshow;->StartPlay()V

    .line 473
    return-void
.end method
