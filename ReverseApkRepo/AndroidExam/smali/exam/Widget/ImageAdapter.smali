.class Lexam/Widget/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridTest.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field picture:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lexam/Widget/ImageAdapter;->picture:[I

    .line 35
    iput-object p1, p0, Lexam/Widget/ImageAdapter;->mContext:Landroid/content/Context;

    .line 36
    return-void

    .line 32
    :array_0
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x64

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 43
    iget-object v0, p0, Lexam/Widget/ImageAdapter;->picture:[I

    rem-int/lit8 v1, p1, 0x3

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v3, 0x2d

    const/16 v2, 0x8

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lexam/Widget/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 56
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 62
    :goto_0
    iget-object v1, p0, Lexam/Widget/ImageAdapter;->picture:[I

    rem-int/lit8 v2, p1, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    return-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 59
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #imageView:Landroid/widget/ImageView;
    goto :goto_0
.end method
