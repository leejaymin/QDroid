.class Lcom/rookiestudio/perfectviewer/TViewerMain$16;
.super Ljava/lang/Thread;
.source "TViewerMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private FN2:Ljava/lang/String;

.field private FO2:I

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

.field private final synthetic val$FN:Ljava/lang/String;

.field private final synthetic val$FO:I


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->val$FN:Ljava/lang/String;

    iput p3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->val$FO:I

    .line 1614
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1615
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FN2:Ljava/lang/String;

    .line 1616
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FO2:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1627
    :try_start_0
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v2, :cond_0

    .line 1628
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->val$FN:Ljava/lang/String;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->val$FO:I

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindCacheImageIndex(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1629
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FN2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1634
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FN2:Ljava/lang/String;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsImage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FO2:I

    if-ne v2, v6, :cond_1

    .line 1635
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FN2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/THistoryManager;->FindBookHistory(Ljava/lang/String;)Lcom/rookiestudio/baseclass/THistoryItem;

    move-result-object v0

    .line 1636
    .local v0, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    if-eqz v0, :cond_1

    .line 1637
    iget-object v2, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FN2:Ljava/lang/String;

    .line 1648
    .end local v0           #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_1
    :goto_1
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FO2:I

    if-ne v2, v6, :cond_3

    .line 1649
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FN2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->FileSelected(Ljava/lang/String;)V

    .line 1653
    :goto_2
    return-void

    .line 1641
    .restart local v0       #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FO2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1642
    :catch_0
    move-exception v1

    .line 1643
    .local v1, e:Ljava/lang/Exception;
    iput v6, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FO2:I

    goto :goto_1

    .line 1651
    .end local v0           #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FN2:Ljava/lang/String;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->FO2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->FileSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1632
    :catch_1
    move-exception v2

    goto :goto_0
.end method
