.class Lcom/madvil/ms/MusicToPhoneActivity$9;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/madvil/ms/MusicToPhoneActivity$9;)Lcom/madvil/ms/MusicToPhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 366
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsAdapter:Lcom/madvil/core/DownloadsAdapter;

    invoke-virtual {v1, p3}, Lcom/madvil/core/DownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madvil/core/SimpleDownloadForAdapter;

    #setter for: Lcom/madvil/ms/MusicToPhoneActivity;->_downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;
    invoke-static {v2, v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$1(Lcom/madvil/ms/MusicToPhoneActivity;Lcom/madvil/core/SimpleDownloadForAdapter;)V

    .line 367
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->_downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$2(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleDownloadForAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/madvil/core/SimpleDownloadForAdapter;->isFree()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const-string v1, "Cancel download?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->_downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$2(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleDownloadForAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/madvil/core/SimpleDownloadForAdapter;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$9;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->_downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$2(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleDownloadForAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/madvil/core/SimpleDownloadForAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 372
    const-string v1, "No"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    const-string v1, "Yes"

    new-instance v2, Lcom/madvil/ms/MusicToPhoneActivity$9$1;

    invoke-direct {v2, p0}, Lcom/madvil/ms/MusicToPhoneActivity$9$1;-><init>(Lcom/madvil/ms/MusicToPhoneActivity$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 388
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
