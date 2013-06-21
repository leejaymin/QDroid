.class public Lcom/fleapapa/helper/BidList;
.super Landroid/app/Activity;
.source "BidList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/BidList$BidAdapter;
    }
.end annotation


# static fields
.field public static final WHO:Ljava/lang/String; = "BidList"


# instance fields
.field adapter:Lcom/fleapapa/helper/BidList$BidAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/BidList$BidAdapter",
            "<",
            "Lcom/fleapapa/helper/Bid;",
            ">;"
        }
    .end annotation
.end field

.field bview:Landroid/widget/ListView;

.field flea:Lcom/fleapapa/helper/Flea;

.field isMyItem:Z

.field item:Lcom/fleapapa/helper/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method bid(Lcom/fleapapa/helper/Item;DI)V
    .locals 14
    .parameter "item"
    .parameter "bid"
    .parameter "qty"

    .prologue
    .line 124
    const/4 v1, 0x0

    const v2, 0x7f06003a

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/BidList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 125
    .local v2, pdlg:Landroid/app/ProgressDialog;
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 126
    .local v11, handler:Landroid/os/Handler;
    new-instance v0, Lcom/fleapapa/helper/BidList$6;

    move-object v1, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/BidList$6;-><init>(Lcom/fleapapa/helper/BidList;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;D)V

    .line 134
    .local v0, ok:Ljava/lang/Runnable;
    new-instance v3, Lcom/fleapapa/helper/BidList$7;

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-wide/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/fleapapa/helper/BidList$7;-><init>(Lcom/fleapapa/helper/BidList;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;D)V

    .line 141
    .local v3, err:Ljava/lang/Runnable;
    new-instance v4, Lcom/fleapapa/helper/BidList$8;

    const-string v6, "flea.item_bid_save"

    move-object v5, p0

    move-object v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object v12, v0

    move-object v13, v3

    invoke-direct/range {v4 .. v13}, Lcom/fleapapa/helper/BidList$8;-><init>(Lcom/fleapapa/helper/BidList;Ljava/lang/String;Lcom/fleapapa/helper/Item;DILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v4}, Lcom/fleapapa/helper/BidList$8;->start()V

    .line 147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v3, "BidList.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/fleapapa/helper/BidList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "iid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, iid:I
    invoke-static {v0}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v2

    iput-object v2, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    if-nez v2, :cond_0

    .line 40
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BidList.onCreate: no item for iid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/fleapapa/helper/BidList;->finish()V

    .line 67
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->uid:I

    sget v3, Lcom/fleapapa/util/My;->uid:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/fleapapa/helper/BidList;->isMyItem:Z

    .line 46
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/BidList;->requestWindowFeature(I)Z

    .line 47
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/BidList;->setContentView(I)V

    .line 48
    iget-object v2, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v2, v2, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/BidList;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/fleapapa/helper/BidList;->bview:Landroid/widget/ListView;

    .line 51
    iget-object v2, p0, Lcom/fleapapa/helper/BidList;->bview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/BidList$BidAdapter;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/BidList$BidAdapter;-><init>(Lcom/fleapapa/helper/BidList;)V

    iput-object v3, p0, Lcom/fleapapa/helper/BidList;->adapter:Lcom/fleapapa/helper/BidList$BidAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v2, p0, Lcom/fleapapa/helper/BidList;->bview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/BidList$1;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/BidList$1;-><init>(Lcom/fleapapa/helper/BidList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 44
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "BidList.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/fleapapa/helper/BidList;->flea:Lcom/fleapapa/helper/Flea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/BidList;->flea:Lcom/fleapapa/helper/Flea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "BidList.onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    invoke-virtual {p0}, Lcom/fleapapa/helper/BidList;->showVariables()V

    .line 72
    return-void
.end method

.method showVariables()V
    .locals 12

    .prologue
    const v11, 0x7f080004

    const v10, 0x7f080003

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v2}, Lcom/fleapapa/helper/Item;->ended()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v9

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060046

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/BidList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v4, v4, Lcom/fleapapa/helper/Item;->nbid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v4, v4, Lcom/fleapapa/helper/Item;->nsold:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v5, v5, Lcom/fleapapa/helper/Item;->qty:I

    iget-object v6, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v6, v6, Lcom/fleapapa/helper/Item;->nsold:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0, v10}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0, v10}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/fleapapa/helper/BidList$2;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/BidList$2;-><init>(Lcom/fleapapa/helper/BidList;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    invoke-virtual {p0, v11}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "%.2f"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v4, v8}, Lcom/fleapapa/helper/Item;->nextbid(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0, v11}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/fleapapa/helper/BidList$3;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/BidList$3;-><init>(Lcom/fleapapa/helper/BidList;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/fleapapa/helper/BidList$4;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/BidList$4;-><init>(Lcom/fleapapa/helper/BidList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-wide v2, v2, Lcom/fleapapa/helper/Item;->buynow:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    move v2, v7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/fleapapa/helper/BidList$5;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/BidList$5;-><init>(Lcom/fleapapa/helper/BidList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/fleapapa/helper/BidList;->adapter:Lcom/fleapapa/helper/BidList$BidAdapter;

    invoke-virtual {v1}, Lcom/fleapapa/helper/BidList$BidAdapter;->clear()V

    .line 117
    iget-object v1, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 122
    .end local v0           #i:I
    :cond_0
    return-void

    :cond_1
    move v2, v7

    .line 79
    goto/16 :goto_0

    :cond_2
    move v2, v9

    .line 109
    goto :goto_1

    .line 119
    .restart local v0       #i:I
    :cond_3
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fuck "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/Bid;

    iget-wide v4, v1, Lcom/fleapapa/helper/Bid;->bid:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/fleapapa/helper/BidList;->adapter:Lcom/fleapapa/helper/BidList$BidAdapter;

    iget-object v1, p0, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/Bid;

    invoke-virtual {v2, v1}, Lcom/fleapapa/helper/BidList$BidAdapter;->add(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
