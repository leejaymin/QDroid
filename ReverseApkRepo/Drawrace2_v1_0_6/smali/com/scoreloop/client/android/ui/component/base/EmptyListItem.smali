.class public Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "EmptyListItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "title"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x10

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 48
    :cond_0
    const v1, 0x7f0c0023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
