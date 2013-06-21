.class Lcom/madvil/ms/MusicToPhoneActivity$15;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->activityManager:Landroid/app/ActivityManager;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$7(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/ActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$8(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 576
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$9(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 577
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-virtual {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->cancelPreviewDialog()V

    .line 579
    new-instance v0, Lcom/madvil/core/SimpleSong;

    invoke-direct {v0}, Lcom/madvil/core/SimpleSong;-><init>()V

    .line 580
    .local v0, ss:Lcom/madvil/core/SimpleSong;
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSong:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$10(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setName(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogArtist:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$11(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setArtist(Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$12(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleSong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/madvil/core/SimpleSong;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setDuration(I)V

    .line 583
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$12(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleSong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/madvil/core/SimpleSong;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setLink(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->storage:Ljava/lang/String;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$13(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const-string v2, "No SD card found. Can\'t download"

    .line 587
    const/4 v3, 0x0

    .line 586
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 587
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 598
    .end local v0           #ss:Lcom/madvil/core/SimpleSong;
    :goto_0
    return-void

    .line 588
    .restart local v0       #ss:Lcom/madvil/core/SimpleSong;
    :cond_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$8(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const-string v2, "Low memory warning. Can\'t download"

    .line 590
    const/4 v3, 0x0

    .line 589
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 597
    .end local v0           #ss:Lcom/madvil/core/SimpleSong;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 591
    .restart local v0       #ss:Lcom/madvil/core/SimpleSong;
    :cond_1
    sget-object v1, Lcom/madvil/core/DownloadService;->singletone:Lcom/madvil/core/DownloadService;

    invoke-virtual {v1, v0}, Lcom/madvil/core/DownloadService;->existInDownloads(Lcom/madvil/core/SimpleSong;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$15;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const-string v2, "This song already exist"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 594
    :cond_2
    sget-object v1, Lcom/madvil/core/DownloadService;->singletone:Lcom/madvil/core/DownloadService;

    invoke-virtual {v1, v0}, Lcom/madvil/core/DownloadService;->startNewDownload(Lcom/madvil/core/SimpleSong;)Lcom/madvil/core/SimpleDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
