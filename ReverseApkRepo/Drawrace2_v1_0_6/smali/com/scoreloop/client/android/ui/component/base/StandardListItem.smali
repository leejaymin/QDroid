.class public Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "StandardListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;"
    }
.end annotation


# instance fields
.field private _holder:Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

.field private _subTitle:Ljava/lang/String;

.field private _subTitle2:Ljava/lang/String;

.field private final _target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "activity"
    .parameter "drawable"
    .parameter "title"
    .parameter "subTitle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    .local p5, target:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 52
    iput-object p4, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_subTitle:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_target:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Ljava/lang/Object;)V
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    .local p2, target:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_target:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method protected createViewHolder()Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;-><init>()V

    return-object v0
.end method

.method protected fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 4
    .parameter "view"
    .parameter "holder"

    .prologue
    .line 66
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getIconId()I

    move-result v0

    .line 67
    .local v0, iconId:I
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p2, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->icon:Landroid/widget/ImageView;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getTitleId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->title:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getSubTitleId()I

    move-result v2

    .line 72
    .local v2, subTitleId:I
    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->subTitle:Landroid/widget/TextView;

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getSubTitle2Id()I

    move-result v1

    .line 76
    .local v1, subTitle2Id:I
    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->subTitle2:Landroid/widget/TextView;

    .line 79
    :cond_2
    return-void
.end method

.method public getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    return-object v0
.end method

.method protected getDrawableLoading()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 185
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawableLoadingError()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 189
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIconId()I
    .locals 1

    .prologue
    .line 86
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const v0, 0x7f0c0039

    return v0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const v0, 0x7f030028

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_subTitle2:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubTitle2Id()I
    .locals 1

    .prologue
    .line 118
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getSubTitleId()I
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const v0, 0x7f0c003a

    return v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_target:Ljava/lang/Object;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 126
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const v0, 0x7f0c0023

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const/16 v0, 0x17

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 136
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->createViewHolder()Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_holder:Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    .line 139
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_holder:Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    .line 140
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_holder:Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_holder:Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    .line 145
    return-object p1

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_holder:Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 150
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public setSubTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 158
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->setSubTitle(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "subTitle"

    .prologue
    .line 154
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_subTitle:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setSubTitle2(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 110
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->setSubTitle2(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setSubTitle2(Ljava/lang/String;)V
    .locals 0
    .parameter "subTitle2"

    .prologue
    .line 106
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->_subTitle2:Ljava/lang/String;

    .line 107
    return-void
.end method

.method protected updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 6
    .parameter "holder"

    .prologue
    .line 162
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/StandardListItem;,"Lcom/scoreloop/client/android/ui/component/base/StandardListItem<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, imageUrl:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getDrawableLoading()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getDrawableLoadingError()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, p1, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->subTitle:Landroid/widget/TextView;

    .line 174
    .local v2, subTitle:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    iget-object v3, p1, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->subTitle2:Landroid/widget/TextView;

    .line 178
    .local v3, subTitle2:Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getSubTitle2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getSubTitle2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_2
    return-void

    .line 167
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #subTitle:Landroid/widget/TextView;
    .end local v3           #subTitle2:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 169
    iget-object v4, p1, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 179
    .restart local v2       #subTitle:Landroid/widget/TextView;
    .restart local v3       #subTitle2:Landroid/widget/TextView;
    :cond_4
    const/16 v4, 0x8

    goto :goto_1
.end method
