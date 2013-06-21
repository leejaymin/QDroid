.class Lcom/madvil/ms/MusicToPhoneActivity$9$1;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity$9;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madvil/ms/MusicToPhoneActivity$9;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$9$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$9;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 379
    :try_start_0
    sget-object v0, Lcom/madvil/core/DownloadService;->singletone:Lcom/madvil/core/DownloadService;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$9$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$9;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$9;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$9;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->_downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$2(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleDownloadForAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madvil/core/DownloadService;->abortDownload(Lcom/madvil/core/SimpleDownloadForAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method
