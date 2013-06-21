.class public Lcom/wolfram/android/alpha/view/AssumptionsView;
.super Landroid/widget/LinearLayout;
.source "AssumptionsView.java"


# instance fields
.field private assumptions:[Lcom/wolfram/alpha/WAAssumption;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public static createFromXML(Landroid/content/Context;[Lcom/wolfram/alpha/WAAssumption;)Lcom/wolfram/android/alpha/view/AssumptionsView;
    .locals 14
    .parameter "context"
    .parameter "assumptions"

    .prologue
    const v13, 0x7f03000c

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 33
    invoke-static {p0}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v4

    .line 34
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f03000e

    invoke-virtual {v4, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/wolfram/android/alpha/view/AssumptionsView;

    .line 35
    .local v8, view:Lcom/wolfram/android/alpha/view/AssumptionsView;
    iput-object p1, v8, Lcom/wolfram/android/alpha/view/AssumptionsView;->assumptions:[Lcom/wolfram/alpha/WAAssumption;

    .line 37
    const v9, 0x7f0e0009

    invoke-virtual {v8, v9}, Lcom/wolfram/android/alpha/view/AssumptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 38
    .local v2, assumptionsPanel:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .line 39
    .local v5, numRows:I
    const/4 v3, 0x0

    .line 40
    .local v3, i:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_1

    const/4 v9, 0x2

    if-ge v5, v9, :cond_1

    .line 41
    aget-object v0, p1, v3

    .line 42
    .local v0, assumption:Lcom/wolfram/alpha/WAAssumption;
    invoke-interface {v0}, Lcom/wolfram/alpha/WAAssumption;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptionTypeToTypeCode(Ljava/lang/String;)I

    move-result v7

    .line 43
    .local v7, typeCode:I
    invoke-static {v7}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->isFormulaAssumption(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 44
    invoke-virtual {v4, v13, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, assumptionView:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    invoke-static {v0, v7, v12, v10}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formatAssumptionString(Lcom/wolfram/alpha/WAAssumption;IIZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u00a0\u2026"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 52
    .end local v1           #assumptionView:Landroid/widget/TextView;
    .end local v6           #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_0

    .line 55
    .end local v0           #assumption:Lcom/wolfram/alpha/WAAssumption;
    .end local v7           #typeCode:I
    :cond_1
    array-length v9, p1

    if-ge v3, v9, :cond_2

    .line 56
    invoke-virtual {v4, v13, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .restart local v1       #assumptionView:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u00a0\u2026"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .restart local v6       #text:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    const/high16 v10, 0x4040

    sub-float/2addr v9, v10

    invoke-virtual {v1, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 65
    .end local v1           #assumptionView:Landroid/widget/TextView;
    .end local v6           #text:Ljava/lang/String;
    :cond_2
    return-object v8
.end method
