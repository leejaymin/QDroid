.class Lcom/rookiestudio/perfectviewer/TFileBrowser$1;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->FileOperation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final synthetic val$MenuDialog:Landroid/app/AlertDialog;

.field private final synthetic val$Parent:Landroid/app/Activity;

.field private final synthetic val$SelectedFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$MenuDialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x2

    const/4 v6, -0x1

    const v5, 0xf423f

    .line 452
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$MenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 453
    packed-switch p3, :pswitch_data_0

    .line 503
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 456
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-static {v3, v4, v6, v7}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_0

    .line 459
    :pswitch_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->RenameFile(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :pswitch_2
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->DeleteFile(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :pswitch_3
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 467
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-static {v3, v4, v6, v7}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->ViewFile(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 468
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 469
    .local v0, DelayHandler:Landroid/os/Handler;
    new-instance v2, Lcom/rookiestudio/perfectviewer/TFileBrowser$1$1;

    invoke-direct {v2, p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$1$1;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser$1;)V

    .line 475
    .local v2, StartSlideshow:Ljava/lang/Runnable;
    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 479
    .end local v0           #DelayHandler:Landroid/os/Handler;
    .end local v2           #StartSlideshow:Ljava/lang/Runnable;
    :pswitch_4
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    :cond_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v5, v5}, Lcom/rookiestudio/perfectviewer/THistoryManager;->AddHistoryFile(Ljava/lang/String;III)V

    .line 484
    :goto_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TFileBrowser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    check-cast v3, Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V

    goto :goto_0

    .line 482
    :cond_1
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v5}, Lcom/rookiestudio/perfectviewer/THistoryManager;->AddHistoryFile(Ljava/lang/String;II)V

    goto :goto_1

    .line 487
    :cond_2
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    check-cast v3, Lcom/rookiestudio/perfectviewer/TBookshelf;

    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->IncrementalScan:Z

    invoke-virtual {v3, v4}, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfRefresh(Z)V

    goto :goto_0

    .line 491
    :pswitch_5
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/Config;->FindHistoryFile(Ljava/lang/String;)I

    move-result v1

    .line 492
    .local v1, Index:I
    if-eq v1, v6, :cond_3

    .line 493
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 495
    :cond_3
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$SelectedFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/rookiestudio/perfectviewer/THistoryManager;->ClearHistoryData(Ljava/lang/String;)Z

    .line 496
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TFileBrowser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 497
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    check-cast v3, Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V

    goto/16 :goto_0

    .line 499
    :cond_4
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$1;->val$Parent:Landroid/app/Activity;

    check-cast v3, Lcom/rookiestudio/perfectviewer/TBookshelf;

    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->IncrementalScan:Z

    invoke-virtual {v3, v4}, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfRefresh(Z)V

    goto/16 :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
