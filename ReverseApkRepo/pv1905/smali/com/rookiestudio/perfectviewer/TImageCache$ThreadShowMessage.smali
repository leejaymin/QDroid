.class Lcom/rookiestudio/perfectviewer/TImageCache$ThreadShowMessage;
.super Ljava/lang/Object;
.source "TImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadShowMessage"
.end annotation


# instance fields
.field MessageStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TImageCache;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TImageCache;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "S"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TImageCache$ThreadShowMessage;->this$0:Lcom/rookiestudio/perfectviewer/TImageCache;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache$ThreadShowMessage;->MessageStr:Ljava/lang/String;

    .line 399
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TImageCache$ThreadShowMessage;->MessageStr:Ljava/lang/String;

    .line 400
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-boolean v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    if-nez v0, :cond_0

    .line 405
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TImageCache$ThreadShowMessage;->MessageStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0
.end method
