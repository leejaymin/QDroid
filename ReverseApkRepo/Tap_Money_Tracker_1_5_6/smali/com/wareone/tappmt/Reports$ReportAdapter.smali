.class public Lcom/wareone/tappmt/Reports$ReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "Reports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Reports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private m_items:Ljava/util/List;
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
    .line 54
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/Reports$ReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lcom/wareone/tappmt/Reports$ReportAdapter;->m_items:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wareone/tappmt/Reports$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0xa

    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/wareone/tappmt/Reports$ReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance v0, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/Reports$ReportAdapter;)V

    .line 109
    .local v0, holder:Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;
    const v1, 0x7f0c0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;->category:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0c006f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/wareone/tappmt/Reports$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "level"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :goto_1
    iget-object v2, v0, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;->category:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wareone/tappmt/Reports$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, v0, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wareone/tappmt/Reports$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v2, "amount"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-object p2

    .line 113
    .end local v0           #holder:Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;
    goto :goto_0

    .line 119
    :pswitch_0
    const v1, 0x7f08004d

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 124
    :pswitch_1
    const v1, 0x7f08004e

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    const/16 v1, 0x28

    invoke-virtual {p2, v1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 129
    :pswitch_2
    const v1, 0x7f08004f

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    const/16 v1, 0x46

    invoke-virtual {p2, v1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
