.class Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/ThemeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EfficientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 121
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/cocmoc/kulinglite/ThemeSelector;->access$0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 173
    new-instance v0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;-><init>()V

    .line 174
    .local v0, holder:Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;
    const v1, 0x7f08000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 175
    const v1, 0x7f08000c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 177
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    :goto_0
    iget-object v1, v0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {}, Lcom/cocmoc/kulinglite/ThemeSelector;->access$0()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, v0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/cocmoc/kulinglite/ThemeSelector;->access$1()[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    return-object p2

    .line 181
    .end local v0           #holder:Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/cocmoc/kulinglite/ThemeSelector$EfficientAdapter$ViewHolder;
    goto :goto_0
.end method
