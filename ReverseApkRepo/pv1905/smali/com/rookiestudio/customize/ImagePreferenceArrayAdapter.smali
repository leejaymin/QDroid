.class public Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImagePreferenceArrayAdapter.java"


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

.field private index:I

.field private onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IILandroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "entries"
    .parameter "objects"
    .parameter "imageResources"
    .parameter "selected"
    .parameter

    .prologue
    .line 23
    .local p7, onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 24
    iput p6, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->index:I

    .line 25
    iput-object p3, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->entries:[Ljava/lang/CharSequence;

    .line 26
    iput-object p5, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->imageResources:[I

    .line 27
    iput-object p7, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput p1, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->index:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f0c0057

    const/4 v7, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    move-object v3, p2

    .line 36
    .local v3, row:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, clickContainer:Landroid/view/View;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    const v6, 0x7f0c0056

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 56
    .local v5, tv:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->entries:[Ljava/lang/CharSequence;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v6, 0x7f0c0058

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 59
    .local v4, tb:Landroid/widget/RadioButton;
    iget v6, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->index:I

    if-ne p1, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 60
    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 62
    const v6, 0x7f0c0055

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, img:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->imageResources:[I

    array-length v6, v6

    if-le v6, p1, :cond_2

    iget-object v6, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->imageResources:[I

    aget v6, v6, p1

    if-lez v6, :cond_2

    .line 64
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->imageResources:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :goto_2
    return-object v3

    .line 39
    .end local v0           #clickContainer:Landroid/view/View;
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v3           #row:Landroid/view/View;
    .end local v4           #tb:Landroid/widget/RadioButton;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 40
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03001c

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 41
    .restart local v3       #row:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .restart local v0       #clickContainer:Landroid/view/View;
    new-instance v6, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;

    invoke-direct {v6, p0}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;-><init>(Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #tb:Landroid/widget/RadioButton;
    .restart local v5       #tv:Landroid/widget/TextView;
    :cond_1
    move v6, v7

    .line 59
    goto :goto_1

    .line 68
    .restart local v1       #img:Landroid/widget/ImageView;
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
