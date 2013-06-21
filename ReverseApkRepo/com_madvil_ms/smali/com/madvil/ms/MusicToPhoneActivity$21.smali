.class Lcom/madvil/ms/MusicToPhoneActivity$21;
.super Landroid/os/Handler;
.source "MusicToPhoneActivity.java"


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
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 846
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 850
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 851
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #setter for: Lcom/madvil/ms/MusicToPhoneActivity;->searchInProgress:Z
    invoke-static {v0, v4}, Lcom/madvil/ms/MusicToPhoneActivity;->access$26(Lcom/madvil/ms/MusicToPhoneActivity;Z)V

    .line 853
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-boolean v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->progresSearchingDShowed:Z

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchResult:Lcom/madvil/searchengines/ParsedResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchResult:Lcom/madvil/searchengines/ParsedResponse;

    invoke-virtual {v0}, Lcom/madvil/searchengines/ParsedResponse;->getSongs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const-string v1, "Nothing found. Check your connection or try again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 857
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 863
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iput-boolean v4, v0, Lcom/madvil/ms/MusicToPhoneActivity;->progresSearchingDShowed:Z

    .line 864
    return-void

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    new-instance v1, Lcom/madvil/core/SearchResultAdapter;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v3, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v3, v3, Lcom/madvil/ms/MusicToPhoneActivity;->searchResult:Lcom/madvil/searchengines/ParsedResponse;

    invoke-virtual {v3}, Lcom/madvil/searchengines/ParsedResponse;->getSongs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/madvil/core/SearchResultAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchAdapter:Lcom/madvil/core/SearchResultAdapter;

    .line 860
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$21;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->searchAdapter:Lcom/madvil/core/SearchResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
