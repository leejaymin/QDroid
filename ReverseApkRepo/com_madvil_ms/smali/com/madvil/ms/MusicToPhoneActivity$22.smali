.class Lcom/madvil/ms/MusicToPhoneActivity$22;
.super Ljava/lang/Thread;
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
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 868
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 872
    :try_start_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/madvil/ms/MusicToPhoneActivity;->progresSearchingDShowed:Z

    .line 873
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v2, v2, Lcom/madvil/ms/MusicToPhoneActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/madvil/ms/MusicToPhoneActivity;->searchString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$27(Lcom/madvil/ms/MusicToPhoneActivity;Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v2, v2, Lcom/madvil/ms/MusicToPhoneActivity;->currentSE:Lcom/madvil/searchengines/CombinedSearchEngine;

    iget-object v3, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->searchString:Ljava/lang/String;
    invoke-static {v3}, Lcom/madvil/ms/MusicToPhoneActivity;->access$28(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->withCyrillic:Z
    invoke-static {v5}, Lcom/madvil/ms/MusicToPhoneActivity;->access$29(Lcom/madvil/ms/MusicToPhoneActivity;)Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/madvil/searchengines/CombinedSearchEngine;->parseSEResponse(Ljava/lang/String;IZ)Lcom/madvil/searchengines/ParsedResponse;

    move-result-object v2

    iput-object v2, v1, Lcom/madvil/ms/MusicToPhoneActivity;->searchResult:Lcom/madvil/searchengines/ParsedResponse;

    .line 875
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->updateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 878
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$22;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
