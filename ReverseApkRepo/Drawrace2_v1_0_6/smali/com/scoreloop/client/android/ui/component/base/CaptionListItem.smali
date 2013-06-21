.class public Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "CaptionListItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "drawable"
    .parameter "title"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    :cond_0
    const v1, 0x7f0c0055

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
