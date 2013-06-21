.class final Lcom/viewpagerindicator/e;
.super Landroid/widget/TextView;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/viewpagerindicator/e;->a:Lcom/viewpagerindicator/TabPageIndicator;

    const/4 v0, 0x0

    sget v1, Lcom/viewpagerindicator/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/e;I)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/e;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/e;->b:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-object v0, p0, Lcom/viewpagerindicator/e;->a:Lcom/viewpagerindicator/TabPageIndicator;

    #getter for: Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I
    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$2(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/e;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/e;->a:Lcom/viewpagerindicator/TabPageIndicator;

    #getter for: Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I
    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicator;->access$2(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/e;->a:Lcom/viewpagerindicator/TabPageIndicator;

    #getter for: Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I
    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$2(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_0
    return-void
.end method
