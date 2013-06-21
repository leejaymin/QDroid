.class public Lccc71/utils/ccc71_browser_item;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    const/4 v1, 0x3

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_browser_item;->setOrientation(I)V

    .line 20
    invoke-virtual {p0, v1, v1, v1, v1}, Lccc71/utils/ccc71_browser_item;->setPadding(IIII)V

    .line 21
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_browser_item;->setGravity(I)V

    .line 23
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/utils/ccc71_browser_item;->a:Landroid/widget/ImageView;

    .line 24
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_browser_item;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/utils/ccc71_browser_item;->b:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 30
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 31
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_browser_item;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    return-void
.end method


# virtual methods
.method public setFileName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public setIconResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lccc71/utils/ccc71_browser_item;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    return-void
.end method
