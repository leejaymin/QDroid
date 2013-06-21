.class Lcom/fleapapa/helper/CallBursts$6;
.super Ljava/lang/Object;
.source "CallBursts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallBursts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallBursts;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallBursts;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f080011

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    sget-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallPapa$Call;->playerState()I

    move-result v1

    .line 105
    .local v1, ps:I
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    if-eq v1, v6, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    if-ne v1, v6, :cond_4

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    if-eq v1, v4, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setEnabled(Z)V

    .line 109
    sget-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallPapa$Call;->playerProgress()I

    move-result v0

    .line 110
    .local v0, progress:I
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    sget-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    iget-object v3, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget v3, v3, Lcom/fleapapa/helper/CallBursts;->cplay:I

    if-eq v2, v3, :cond_2

    .line 113
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget v2, v2, Lcom/fleapapa/helper/CallBursts;->cplay:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget v2, v2, Lcom/fleapapa/helper/CallBursts;->cplay:I

    iget-object v3, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v3, v3, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 114
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v2, v2, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    iget-object v3, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget v3, v3, Lcom/fleapapa/helper/CallBursts;->cplay:I

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/CallBursts$Burstx;

    iget-object v2, v2, Lcom/fleapapa/helper/CallBursts$Burstx;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    sget-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    if-ltz v2, :cond_1

    sget-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    iget-object v3, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v3, v3, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 116
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v2, v2, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    iget-object v3, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    sget-object v4, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v4, v4, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    iput v4, v3, Lcom/fleapapa/helper/CallBursts;->cplay:I

    invoke-virtual {v2, v4}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/CallBursts$Burstx;

    iget-object v2, v2, Lcom/fleapapa/helper/CallBursts$Burstx;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v2, v2, Lcom/fleapapa/helper/CallBursts;->lview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget v3, v3, Lcom/fleapapa/helper/CallBursts;->cplay:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$6;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v2, v2, Lcom/fleapapa/helper/CallBursts;->lview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 123
    :cond_2
    return-void

    .end local v0           #progress:I
    :cond_3
    move v3, v7

    .line 105
    goto/16 :goto_0

    :cond_4
    move v3, v7

    .line 106
    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 107
    goto/16 :goto_2
.end method
