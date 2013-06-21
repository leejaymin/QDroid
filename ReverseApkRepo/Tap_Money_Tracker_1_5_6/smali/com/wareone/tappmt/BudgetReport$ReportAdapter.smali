.class Lcom/wareone/tappmt/BudgetReport$ReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "BudgetReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/BudgetReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;
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

.field private m_limit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    .line 58
    iput p3, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_limit:I

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-string v5, "percent"

    .line 107
    if-nez p2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 109
    new-instance v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/BudgetReport$ReportAdapter;)V

    .line 110
    .local v0, holder:Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;
    const v1, 0x7f0c0033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->category:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0c0070

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->budget:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0c0071

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->used:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0c0072

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0c002c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->balance:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_0
    iget-object v2, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->category:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "category"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->budget:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "budget"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->used:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "used"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "percent"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->balance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "balance"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "percent"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_limit:I

    if-ge v1, v2, :cond_1

    .line 127
    iget-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    const v2, -0xff4500

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .end local p0
    :goto_1
    return-object p2

    .line 117
    .end local v0           #holder:Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;
    goto/16 :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->m_items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v1, "percent"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    .line 129
    iget-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    const/16 v2, -0x7800

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 131
    :cond_2
    iget-object v1, v0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
