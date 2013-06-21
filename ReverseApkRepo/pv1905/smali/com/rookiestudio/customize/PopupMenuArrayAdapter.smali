.class public Lcom/rookiestudio/customize/PopupMenuArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PopupMenuArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private entries:[Ljava/lang/CharSequence;

.field private imageResources:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[I)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "entries"
    .parameter "imageResources"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 20
    iput-object p3, p0, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->entries:[Ljava/lang/CharSequence;

    .line 21
    iput-object p4, p0, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->imageResources:[I

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 27
    if-eqz p2, :cond_0

    .line 28
    move-object v2, p2

    .line 34
    .local v2, row:Landroid/view/View;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    const v4, 0x7f0c0056

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 37
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v4, 0x7f0c0055

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .local v0, img:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->imageResources:[I

    array-length v4, v4

    if-le v4, p1, :cond_1

    iget-object v4, p0, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->imageResources:[I

    aget v4, v4, p1

    if-lez v4, :cond_1

    .line 41
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->imageResources:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_1
    return-object v2

    .line 31
    .end local v0           #img:Landroid/widget/ImageView;
    .end local v2           #row:Landroid/view/View;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 32
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03001b

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2       #row:Landroid/view/View;
    goto :goto_0

    .line 45
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .restart local v0       #img:Landroid/widget/ImageView;
    .restart local v3       #tv:Landroid/widget/TextView;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
