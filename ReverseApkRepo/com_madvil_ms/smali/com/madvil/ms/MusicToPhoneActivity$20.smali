.class Lcom/madvil/ms/MusicToPhoneActivity$20;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->firstSearch()V
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
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 815
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 817
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #setter for: Lcom/madvil/ms/MusicToPhoneActivity;->searchInProgress:Z
    invoke-static {v0, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$26(Lcom/madvil/ms/MusicToPhoneActivity;Z)V

    .line 818
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 819
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iput-object v1, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchResult:Lcom/madvil/searchengines/ParsedResponse;

    .line 820
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iput-boolean v2, v0, Lcom/madvil/ms/MusicToPhoneActivity;->progresSearchingDShowed:Z

    .line 822
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->currentSE:Lcom/madvil/searchengines/CombinedSearchEngine;

    invoke-virtual {v0}, Lcom/madvil/searchengines/CombinedSearchEngine;->getNewInstance()Lcom/madvil/searchengines/ISearchEngine;

    move-result-object v0

    check-cast v0, Lcom/madvil/searchengines/CombinedSearchEngine;

    iput-object v0, v1, Lcom/madvil/ms/MusicToPhoneActivity;->currentSE:Lcom/madvil/searchengines/CombinedSearchEngine;

    .line 824
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$20;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchingThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_0
    :goto_0
    return v2

    .line 829
    :catch_0
    move-exception v0

    goto :goto_0
.end method
