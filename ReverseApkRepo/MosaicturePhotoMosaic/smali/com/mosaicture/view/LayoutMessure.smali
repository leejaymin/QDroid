.class public Lcom/mosaicture/view/LayoutMessure;
.super Landroid/widget/LinearLayout;


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mosaicture/view/LayoutMessure;->a:I

    sput v0, Lcom/mosaicture/view/LayoutMessure;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/mosaicture/view/LayoutMessure;->getMeasuredWidth()I

    move-result v0

    sput v0, Lcom/mosaicture/view/LayoutMessure;->a:I

    invoke-virtual {p0}, Lcom/mosaicture/view/LayoutMessure;->getMeasuredHeight()I

    move-result v0

    sput v0, Lcom/mosaicture/view/LayoutMessure;->b:I

    return-void
.end method
