.class public final Lcom/mosaicture/view/aj;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public a:Lcom/mosaicture/g/g;

.field final synthetic b:Lcom/mosaicture/view/TabSettingsActivity;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabSettingsActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/view/aj;->b:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mosaicture/view/aj;->c:Landroid/view/LayoutInflater;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/mosaicture/view/TabSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mosaicture/view/aj;->c:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/mosaicture/g/g;

    invoke-virtual {p1}, Lcom/mosaicture/view/TabSettingsActivity;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0}, Lcom/mosaicture/g/g;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/view/aj;->a:Lcom/mosaicture/g/g;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/aj;)Lcom/mosaicture/view/TabSettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/aj;->b:Lcom/mosaicture/view/TabSettingsActivity;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;J)V
    .locals 3

    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/view/aj;->a:Lcom/mosaicture/g/g;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, p1, v1}, Lcom/mosaicture/g/g;->a(JLandroid/widget/ImageView;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_1
    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/a;

    if-nez v0, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/mosaicture/view/aj;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_3
    const v1, 0x7f0a000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mosaicture/g/y;->a(Landroid/view/View;ILjava/lang/Object;)V

    new-instance v2, Lcom/mosaicture/view/ak;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/ak;-><init>(Lcom/mosaicture/view/aj;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0011

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mosaicture/g/y;->a(Landroid/view/View;ILjava/lang/Object;)V

    new-instance v2, Lcom/mosaicture/view/al;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/al;-><init>(Lcom/mosaicture/view/aj;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a000f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a000e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0012

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0013

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a000c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/mosaicture/view/CheckableLinearLayout;

    iget-object v9, v0, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v9, :cond_4

    const-string v10, ""

    if-eq v9, v10, :cond_4

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_4

    const-string v8, "/"

    invoke-virtual {v9, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/mosaicture/view/aj;->b:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v8}, Lcom/mosaicture/view/TabSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070031

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v8, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/mosaicture/view/aj;->b:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v8}, Lcom/mosaicture/view/TabSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/mosaicture/view/a/a;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mosaicture/view/a/b;

    iget-wide v8, v8, Lcom/mosaicture/view/a/b;->a:J

    :goto_2
    invoke-direct {p0, v1, v8, v9}, Lcom/mosaicture/view/aj;->a(Landroid/widget/ImageView;J)V

    iget-object v1, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x1

    if-le v1, v8, :cond_8

    iget-object v1, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mosaicture/view/a/b;

    iget-wide v8, v1, Lcom/mosaicture/view/a/b;->a:J

    :goto_3
    invoke-direct {p0, v2, v8, v9}, Lcom/mosaicture/view/aj;->a(Landroid/widget/ImageView;J)V

    iget-object v1, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    iget-object v1, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mosaicture/view/a/b;

    iget-wide v1, v1, Lcom/mosaicture/view/a/b;->a:J

    :goto_4
    invoke-direct {p0, v3, v1, v2}, Lcom/mosaicture/view/aj;->a(Landroid/widget/ImageView;J)V

    :cond_5
    invoke-virtual {v0}, Lcom/mosaicture/view/a/a;->a()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/mosaicture/view/aj;->b:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/TabSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_6
    invoke-virtual {v7, v0}, Lcom/mosaicture/view/CheckableLinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mosaicture/view/aj;->b:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/TabSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_c

    const v0, 0x7f050019

    :goto_7
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto/16 :goto_1

    :cond_7
    const-wide/high16 v8, -0x8000

    goto :goto_2

    :cond_8
    const-wide/high16 v8, -0x8000

    goto :goto_3

    :cond_9
    const-wide/high16 v1, -0x8000

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/mosaicture/view/aj;->b:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/TabSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_6

    :cond_c
    const v0, 0x7f050018

    goto :goto_7
.end method
