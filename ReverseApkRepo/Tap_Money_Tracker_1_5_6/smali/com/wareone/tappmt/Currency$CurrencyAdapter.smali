.class Lcom/wareone/tappmt/Currency$CurrencyAdapter;
.super Landroid/widget/BaseAdapter;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private m_currency:Ljava/util/List;
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

.field private m_flags:[I


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
    .line 73
    .local p2, currency:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 71
    iput-object v0, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_flags:[I

    .line 75
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->mCtx:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    iput-object p2, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_currency:Ljava/util/List;

    .line 80
    return-void

    .line 66
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_currency:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 127
    if-nez p2, :cond_1

    .line 128
    iget-object v4, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030022

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 129
    new-instance v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/Currency$CurrencyAdapter;Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;)V

    .line 130
    .local v2, holder:Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;
    const v4, 0x7f0c0030

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->currency_name:Landroid/widget/TextView;

    .line 131
    const v4, 0x7f0c0074

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->exchange_rate:Landroid/widget/TextView;

    .line 132
    const v4, 0x7f0c0075

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->decimal:Landroid/widget/TextView;

    .line 133
    const v4, 0x7f0c0073

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->flag:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    :goto_0
    iget-object v4, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_currency:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "currency_name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, currency:Ljava/lang/String;
    iget-object v4, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_currency:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "symbol"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, symbol:Ljava/lang/String;
    iget-object v4, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->currency_name:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v5, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->decimal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f09002a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_currency:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v8, "digits"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v4, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_currency:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "isdefault"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 145
    iget-object v4, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->exchange_rate:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    invoke-static {}, Lcom/wareone/tappmt/Currency;->access$1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currency flag ----> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v4, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, ResId:I
    if-lez v0, :cond_0

    .line 153
    iget-object v4, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->flag:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :cond_0
    return-object p2

    .line 136
    .end local v0           #ResId:I
    .end local v1           #currency:Ljava/lang/String;
    .end local v2           #holder:Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;
    .end local v3           #symbol:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;
    goto/16 :goto_0

    .line 147
    .restart local v1       #currency:Ljava/lang/String;
    .restart local v3       #symbol:Ljava/lang/String;
    :cond_2
    iget-object v5, v2, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->exchange_rate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter;->m_currency:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v6, "rate"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
