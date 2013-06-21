.class final Lccc71/pmw/lib/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/dt;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Z

.field private final synthetic d:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/dt;Landroid/view/View;ZLandroid/widget/TableLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/du;->a:Lccc71/pmw/lib/dt;

    iput-object p2, p0, Lccc71/pmw/lib/du;->b:Landroid/view/View;

    iput-boolean p3, p0, Lccc71/pmw/lib/du;->c:Z

    iput-object p4, p0, Lccc71/pmw/lib/du;->d:Landroid/widget/TableLayout;

    .line 1586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1591
    iget-object v0, p0, Lccc71/pmw/lib/du;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1593
    iget-boolean v0, p0, Lccc71/pmw/lib/du;->c:Z

    if-eqz v0, :cond_2

    .line 1595
    iget-object v0, p0, Lccc71/pmw/lib/du;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/du;->d:Landroid/widget/TableLayout;

    iget-object v1, p0, Lccc71/pmw/lib/du;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1607
    iget-object v1, p0, Lccc71/pmw/lib/du;->d:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1609
    iget-object v1, p0, Lccc71/pmw/lib/du;->d:Landroid/widget/TableLayout;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1610
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1612
    iget-boolean v1, p0, Lccc71/pmw/lib/du;->c:Z

    if-eqz v1, :cond_4

    .line 1614
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1627
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lccc71/pmw/lib/du;->c:Z

    if-nez v0, :cond_1

    .line 1628
    iget-object v0, p0, Lccc71/pmw/lib/du;->a:Lccc71/pmw/lib/dt;

    iget v1, v0, Lccc71/pmw/lib/dt;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lccc71/pmw/lib/dt;->a:I

    .line 1629
    :cond_1
    return-void

    .line 1599
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/du;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1600
    iget-object v0, p0, Lccc71/pmw/lib/du;->a:Lccc71/pmw/lib/dt;

    iget v0, v0, Lccc71/pmw/lib/dt;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 1601
    iget-object v0, p0, Lccc71/pmw/lib/du;->b:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/du;->a:Lccc71/pmw/lib/dt;

    invoke-static {v1}, Lccc71/pmw/lib/dt;->a(Lccc71/pmw/lib/dt;)Lccc71/pmw/lib/ds;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/ds;->a(Lccc71/pmw/lib/ds;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->o(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1603
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/du;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1618
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    iget-object v1, p0, Lccc71/pmw/lib/du;->a:Lccc71/pmw/lib/dt;

    iget v1, v1, Lccc71/pmw/lib/dt;->a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 1620
    iget-object v1, p0, Lccc71/pmw/lib/du;->a:Lccc71/pmw/lib/dt;

    invoke-static {v1}, Lccc71/pmw/lib/dt;->a(Lccc71/pmw/lib/dt;)Lccc71/pmw/lib/ds;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/ds;->a(Lccc71/pmw/lib/ds;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->o(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1622
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
