.class public Lcom/wareone/tappmt/TapPMT$TransactionAdapter;
.super Landroid/widget/BaseAdapter;
.source "TapPMT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/TapPMT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private m_transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, transactions:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->mCtx:Landroid/content/Context;

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iput-object p2, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    .line 101
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    const-string v11, "payee"

    const-string v10, ""

    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030023

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 150
    new-instance v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;

    invoke-direct {v2, p0, v7}, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/TapPMT$TransactionAdapter;Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;)V

    .line 151
    .local v2, holder:Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;
    const v5, 0x7f0c0076

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->trans_date:Landroid/widget/TextView;

    .line 152
    const v5, 0x7f0c0033

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->category:Landroid/widget/TextView;

    .line 153
    const v5, 0x7f0c0077

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->account:Landroid/widget/TextView;

    .line 154
    const v5, 0x7f0c007a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->payee:Landroid/widget/TextView;

    .line 155
    const v5, 0x7f0c0078

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->group:Landroid/widget/TextView;

    .line 156
    const v5, 0x7f0c0030

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->currency:Landroid/widget/TextView;

    .line 157
    const v5, 0x7f0c006f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    .line 158
    const v5, 0x7f0c007b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->note:Landroid/widget/TextView;

    .line 159
    const v5, 0x7f0c0079

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    iget-object v6, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->category:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "category"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v6, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->trans_date:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "trans_date"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v6, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->account:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "account"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "payee"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "payee"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, payee:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 172
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->payee:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    .end local v4           #payee:Ljava/lang/String;
    :goto_1
    iget-object v6, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->group:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "group_name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "currency"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, currency:Ljava/lang/String;
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->currency:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "amount"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, amount:Ljava/lang/String;
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_3

    .line 187
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    :goto_2
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "note"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, note:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 198
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->note:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_3
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->m_transactions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v5, "src_id"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 204
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_4
    return-object p2

    .line 162
    .end local v0           #amount:Ljava/lang/String;
    .end local v1           #currency:Ljava/lang/String;
    .end local v2           #holder:Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;
    .end local v3           #note:Ljava/lang/String;
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;
    goto/16 :goto_0

    .line 174
    .restart local v4       #payee:Ljava/lang/String;
    :cond_1
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->payee:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->payee:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 178
    .end local v4           #payee:Ljava/lang/String;
    :cond_2
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->payee:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 189
    .restart local v0       #amount:Ljava/lang/String;
    .restart local v1       #currency:Ljava/lang/String;
    :cond_3
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 200
    .restart local v3       #note:Ljava/lang/String;
    :cond_4
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->note:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->note:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 206
    .end local p0
    :cond_5
    iget-object v5, v2, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method
