.class final Lccc71/pmw/lib/dt;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lccc71/pmw/lib/ds;

.field private final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ds;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dt;->b:Lccc71/pmw/lib/ds;

    iput-object p2, p0, Lccc71/pmw/lib/dt;->c:[Ljava/lang/String;

    .line 1566
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1568
    const/4 v0, 0x0

    iput v0, p0, Lccc71/pmw/lib/dt;->a:I

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/dt;)Lccc71/pmw/lib/ds;
    .locals 1
    .parameter

    .prologue
    .line 1566
    iget-object v0, p0, Lccc71/pmw/lib/dt;->b:Lccc71/pmw/lib/ds;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1573
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1575
    iget-object v0, p0, Lccc71/pmw/lib/dt;->b:Lccc71/pmw/lib/ds;

    invoke-static {v0}, Lccc71/pmw/lib/ds;->a(Lccc71/pmw/lib/ds;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 1576
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    move v4, v3

    .line 1577
    :goto_0
    if-lt v4, v5, :cond_0

    .line 1633
    return-void

    .line 1579
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1580
    const-class v1, Landroid/widget/TableRow;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1582
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v1

    .line 1583
    iget-object v7, p0, Lccc71/pmw/lib/dt;->c:[Ljava/lang/String;

    aget-object v7, v7, v1

    if-eqz v7, :cond_4

    iget-object v7, p0, Lccc71/pmw/lib/dt;->c:[Ljava/lang/String;

    aget-object v1, v7, v1

    sget-object v7, Lccc71/pmw/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 1584
    :goto_1
    iget-object v7, p0, Lccc71/pmw/lib/dt;->b:Lccc71/pmw/lib/ds;

    invoke-static {v7}, Lccc71/pmw/lib/ds;->a(Lccc71/pmw/lib/ds;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->k(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/lib/dz;

    move-result-object v7

    sget-object v8, Lccc71/pmw/lib/dz;->c:Lccc71/pmw/lib/dz;

    if-ne v7, v8, :cond_1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v7, p0, Lccc71/pmw/lib/dt;->b:Lccc71/pmw/lib/ds;

    invoke-static {v7}, Lccc71/pmw/lib/ds;->a(Lccc71/pmw/lib/ds;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->k(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/lib/dz;

    move-result-object v7

    sget-object v8, Lccc71/pmw/lib/dz;->b:Lccc71/pmw/lib/dz;

    if-ne v7, v8, :cond_2

    if-nez v1, :cond_5

    :cond_2
    move v1, v3

    .line 1586
    :goto_2
    iget-object v7, p0, Lccc71/pmw/lib/dt;->b:Lccc71/pmw/lib/ds;

    invoke-static {v7}, Lccc71/pmw/lib/ds;->a(Lccc71/pmw/lib/ds;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->n(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lccc71/pmw/lib/du;

    invoke-direct {v8, p0, v6, v1, v0}, Lccc71/pmw/lib/du;-><init>(Lccc71/pmw/lib/dt;Landroid/view/View;ZLandroid/widget/TableLayout;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1577
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1583
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1584
    goto :goto_2
.end method
