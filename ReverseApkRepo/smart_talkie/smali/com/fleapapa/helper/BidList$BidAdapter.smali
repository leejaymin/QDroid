.class public Lcom/fleapapa/helper/BidList$BidAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BidList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/BidList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BidAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/fleapapa/helper/BidList;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/BidList;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    .local p0, this:Lcom/fleapapa/helper/BidList$BidAdapter;,"Lcom/fleapapa/helper/BidList$BidAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    .line 154
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 157
    .local p0, this:Lcom/fleapapa/helper/BidList$BidAdapter;,"Lcom/fleapapa/helper/BidList$BidAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/fleapapa/helper/BidList$BidAdapter;->getCount()I

    move-result v2

    .line 159
    .local v2, nbid:I
    iget-object v4, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/BidList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 161
    :cond_0
    iget-object v4, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 163
    .local v1, ll:Landroid/widget/LinearLayout;
    if-lt p1, v2, :cond_2

    .line 164
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BidAdapter.getView position="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local p1
    :cond_1
    :goto_0
    return-object v1

    .line 167
    .restart local p1
    :cond_2
    iget-object v4, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v4, v4, Lcom/fleapapa/helper/BidList;->adapter:Lcom/fleapapa/helper/BidList$BidAdapter;

    invoke-virtual {v4, p1}, Lcom/fleapapa/helper/BidList$BidAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Bid;

    .line 169
    .local v0, bid:Lcom/fleapapa/helper/Bid;
    const v4, 0x7f080009

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    const-string v4, "%3d."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v7, v7, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v7, v7, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v8, v8, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v8, v8, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const v4, 0x7f08000a

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    iget-object v6, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v6, v6, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v6, v6, Lcom/fleapapa/helper/Item;->currency:I

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/fleapapa/helper/Bid;->bid:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v4, 0x7f08000b

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, "x%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/fleapapa/helper/Bid;->qty:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v4, 0x7f08000c

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/fleapapa/helper/Bid;->user:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v4, 0x7f08000d

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/fleapapa/helper/Bid;->time:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v0}, Lcom/fleapapa/helper/Bid;->p2win()I

    move-result v3

    .local v3, pwin:I
    if-lez v3, :cond_1

    .line 176
    iget-object v4, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v4, v4, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-wide v4, v4, Lcom/fleapapa/helper/Item;->buynow:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, v0, Lcom/fleapapa/helper/Bid;->bid:D

    iget-object v6, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v6, v6, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-wide v6, v6, Lcom/fleapapa/helper/Item;->buynow:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 177
    iget v4, v0, Lcom/fleapapa/helper/Bid;->qty:I

    if-ge v3, v4, :cond_3

    const v4, 0x7f007f00

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_3
    const v4, 0x7f00ff00

    goto :goto_1

    .line 179
    :cond_4
    iget-object v4, p0, Lcom/fleapapa/helper/BidList$BidAdapter;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v4, v4, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v4}, Lcom/fleapapa/helper/Item;->ended()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 180
    iget v4, v0, Lcom/fleapapa/helper/Bid;->qty:I

    if-ge v3, v4, :cond_5

    const v4, 0x7f007f00

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_5
    const v4, 0x7f00ff00

    goto :goto_2

    .line 182
    :cond_6
    iget v4, v0, Lcom/fleapapa/helper/Bid;->qty:I

    if-ge v3, v4, :cond_7

    const/high16 v4, 0x7f7f

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_7
    const/high16 v4, 0x7fff

    goto :goto_3
.end method
