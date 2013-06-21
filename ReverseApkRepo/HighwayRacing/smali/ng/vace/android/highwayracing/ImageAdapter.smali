.class public Lng/vace/android/highwayracing/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# static fields
.field private static final images:[Ljava/lang/Integer;


# instance fields
.field private final backgroundResource:I

.field private final context:Landroid/content/Context;

.field private final maxLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lng/vace/android/highwayracing/util/CarFactory;->getCarImageResources()[Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lng/vace/android/highwayracing/ImageAdapter;->images:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "c"
    .parameter "maxLevel"

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lng/vace/android/highwayracing/ImageAdapter;->context:Landroid/content/Context;

    .line 21
    iput p2, p0, Lng/vace/android/highwayracing/ImageAdapter;->maxLevel:I

    .line 22
    iget-object v1, p0, Lng/vace/android/highwayracing/ImageAdapter;->context:Landroid/content/Context;

    sget-object v2, Lng/vace/android/highwayracing/R$styleable;->Gallery:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lng/vace/android/highwayracing/ImageAdapter;->backgroundResource:I

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lng/vace/android/highwayracing/ImageAdapter;->maxLevel:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lng/vace/android/highwayracing/ImageAdapter;->images:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lng/vace/android/highwayracing/ImageAdapter;->maxLevel:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lng/vace/android/highwayracing/ImageAdapter;->images:[Ljava/lang/Integer;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    sget-object v0, Lng/vace/android/highwayracing/ImageAdapter;->images:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    sget-object v0, Lng/vace/android/highwayracing/ImageAdapter;->images:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v2, 0x96

    .line 40
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lng/vace/android/highwayracing/ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Lng/vace/android/highwayracing/ImageAdapter;->images:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    iget v1, p0, Lng/vace/android/highwayracing/ImageAdapter;->backgroundResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 47
    return-object v0
.end method
