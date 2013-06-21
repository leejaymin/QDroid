.class Lcom/madvil/ms/MusicToPhoneActivity$12;
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
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$12;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 451
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$12;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->chartsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/madvil/core/ChartAdapter;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$12;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->changeTab(I)V

    .line 453
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$12;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->chartsAdapter:Lcom/madvil/core/ChartAdapter;

    invoke-virtual {v1, p3}, Lcom/madvil/core/ChartAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madvil/core/SimpleSong;

    .line 454
    .local v0, ss:Lcom/madvil/core/SimpleSong;
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$12;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/madvil/core/SimpleSong;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/madvil/core/SimpleSong;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$12;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-virtual {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->firstSearch()V

    .line 461
    .end local v0           #ss:Lcom/madvil/core/SimpleSong;
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$12;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-virtual {v1, p3}, Lcom/madvil/ms/MusicToPhoneActivity;->updateXmlChart(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    goto :goto_0
.end method
