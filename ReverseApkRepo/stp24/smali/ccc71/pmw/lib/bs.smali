.class final Lccc71/pmw/lib/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/br;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:Landroid/widget/TableLayout;

.field private final synthetic f:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/br;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/TableLayout;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bs;->a:Lccc71/pmw/lib/br;

    iput p2, p0, Lccc71/pmw/lib/bs;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/bs;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/pmw/lib/bs;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lccc71/pmw/lib/bs;->e:Landroid/widget/TableLayout;

    iput p6, p0, Lccc71/pmw/lib/bs;->f:I

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 431
    move v1, v2

    :goto_0
    iget v0, p0, Lccc71/pmw/lib/bs;->b:I

    if-lt v1, v0, :cond_0

    .line 437
    iget-object v0, p0, Lccc71/pmw/lib/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 438
    :goto_1
    if-lt v1, v3, :cond_1

    .line 454
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/bs;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
    iget-object v3, p0, Lccc71/pmw/lib/bs;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lccc71/pmw/lib/bs;->e:Landroid/widget/TableLayout;

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v3, p0, Lccc71/pmw/lib/bs;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lccc71/pmw/lib/bs;->e:Landroid/widget/TableLayout;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 441
    iget-object v4, p0, Lccc71/pmw/lib/bs;->e:Landroid/widget/TableLayout;

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 442
    iget-object v4, p0, Lccc71/pmw/lib/bs;->e:Landroid/widget/TableLayout;

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 444
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 446
    iget v4, p0, Lccc71/pmw/lib/bs;->f:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 438
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method
