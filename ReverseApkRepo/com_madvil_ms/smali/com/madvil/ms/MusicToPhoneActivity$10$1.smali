.class Lcom/madvil/ms/MusicToPhoneActivity$10$1;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity$10;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madvil/ms/MusicToPhoneActivity$10;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$10$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$10;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 409
    :try_start_0
    sget-object v0, Lcom/madvil/core/DownloadService;->singletone:Lcom/madvil/core/DownloadService;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$10$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$10;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$10;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$10;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$10;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->downloadItemChecked:Lcom/madvil/core/SimpleDownload;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$4(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madvil/core/DownloadService;->deleteFromQueue(Lcom/madvil/core/SimpleDownload;)V

    .line 410
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$10$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$10;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$10;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity$10;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$10;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsQueueAdapter:Lcom/madvil/core/DownloadsQueueAdapter;

    invoke-virtual {v0}, Lcom/madvil/core/DownloadsQueueAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0
.end method
