.class public Lrh;
.super Landroid/app/AlertDialog;


# instance fields
.field protected final 궗:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lrh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lha;->property_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lgz;->propertyList:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lrh;->궗:Landroid/view/ViewGroup;

    invoke-super {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(II)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lrh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lrh;->癤욱븳援(Ljava/lang/CharSequence;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援(ILjava/lang/CharSequence;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lrh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lha;->property_dialog_row:I

    iget-object v2, p0, Lrh;->궗:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v0, Lgz;->name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lgz;->value:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lrh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lrh;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 癤욱븳援(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lrh;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lrh;->癤욱븳援(Ljava/lang/CharSequence;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援(Ljava/lang/CharSequence;I)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lrh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lha;->property_dialog_separator:I

    iget-object v2, p0, Lrh;->궗:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lgz;->text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lrh;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method public final 궗(ILjava/lang/CharSequence;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lrh;->癤욱븳援(ILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
