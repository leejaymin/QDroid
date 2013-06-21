.class Lcom/madvil/ms/MusicToPhoneActivity$19;
.super Ljava/lang/Thread;
.source "MusicToPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->showPreviewDialog(Lcom/madvil/core/SimpleSong;)V
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
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$19;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 722
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 727
    :try_start_0
    iget-object v5, p0, Lcom/madvil/ms/MusicToPhoneActivity$19;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->showingCount:I
    invoke-static {v5}, Lcom/madvil/ms/MusicToPhoneActivity;->access$25(Lcom/madvil/ms/MusicToPhoneActivity;)I

    move-result v2

    .line 728
    .local v2, s:I
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/madvil/ms/MusicToPhoneActivity$19;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;
    invoke-static {v5}, Lcom/madvil/ms/MusicToPhoneActivity;->access$12(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleSong;

    move-result-object v5

    invoke-virtual {v5}, Lcom/madvil/core/SimpleSong;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 729
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 730
    .local v0, con:Ljava/net/URLConnection;
    const/16 v5, 0x1964

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 731
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 733
    .local v3, size:I
    iget-object v5, p0, Lcom/madvil/ms/MusicToPhoneActivity$19;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->showingCount:I
    invoke-static {v5}, Lcom/madvil/ms/MusicToPhoneActivity;->access$25(Lcom/madvil/ms/MusicToPhoneActivity;)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 734
    iget-object v5, p0, Lcom/madvil/ms/MusicToPhoneActivity$19;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/madvil/ms/MusicToPhoneActivity;->access$19(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v0           #con:Ljava/net/URLConnection;
    .end local v2           #s:I
    .end local v3           #size:I
    .end local v4           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 738
    .local v1, ex:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/madvil/ms/MusicToPhoneActivity$19;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/madvil/ms/MusicToPhoneActivity;->access$19(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
