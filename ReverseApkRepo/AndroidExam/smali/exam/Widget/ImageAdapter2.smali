.class Lexam/Widget/ImageAdapter2;
.super Landroid/widget/BaseAdapter;
.source "GalleryTest.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 28
    iput-object v0, p0, Lexam/Widget/ImageAdapter2;->mImageIds:[I

    .line 32
    iput-object p1, p0, Lexam/Widget/ImageAdapter2;->mContext:Landroid/content/Context;

    .line 33
    return-void

    .line 22
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lexam/Widget/ImageAdapter2;->mImageIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lexam/Widget/ImageAdapter2;->mImageIds:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lexam/Widget/ImageAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, imageView:Landroid/widget/ImageView;
    :goto_0
    iget-object v1, p0, Lexam/Widget/ImageAdapter2;->mImageIds:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/16 v2, 0x88

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 53
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #imageView:Landroid/widget/ImageView;
    goto :goto_0
.end method
