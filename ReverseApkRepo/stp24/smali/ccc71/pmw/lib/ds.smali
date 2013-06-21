.class final Lccc71/pmw/lib/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ds;)Lccc71/pmw/lib/pmw_backuplist;
    .locals 1
    .parameter

    .prologue
    .line 1531
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    return-object v0
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 1531
    sget-object v0, Lccc71/pmw/lib/ds;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/pmw/lib/dz;->values()[Lccc71/pmw/lib/dz;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/pmw/lib/dz;->a:Lccc71/pmw/lib/dz;

    invoke-virtual {v1}, Lccc71/pmw/lib/dz;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/pmw/lib/dz;->c:Lccc71/pmw/lib/dz;

    invoke-virtual {v1}, Lccc71/pmw/lib/dz;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/pmw/lib/dz;->b:Lccc71/pmw/lib/dz;

    invoke-virtual {v1}, Lccc71/pmw/lib/dz;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lccc71/pmw/lib/ds;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1536
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v1, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v2, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1539
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1638
    :goto_0
    return-void

    .line 1543
    :cond_0
    invoke-static {}, Lccc71/pmw/lib/ds;->a()[I

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->k(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/lib/dz;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/lib/dz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1561
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1565
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->m(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;

    move-result-object v0

    .line 1566
    new-instance v1, Lccc71/pmw/lib/dt;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/dt;-><init>(Lccc71/pmw/lib/ds;[Ljava/lang/String;)V

    .line 1635
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 1636
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1546
    :pswitch_0
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget-object v1, Lccc71/pmw/lib/dz;->b:Lccc71/pmw/lib/dz;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/lib/dz;)V

    .line 1547
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->l(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->a:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1548
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->l(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bI:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 1551
    :pswitch_1
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget-object v1, Lccc71/pmw/lib/dz;->c:Lccc71/pmw/lib/dz;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/lib/dz;)V

    .line 1552
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->l(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->d:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1553
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->l(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bH:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 1556
    :pswitch_2
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget-object v1, Lccc71/pmw/lib/dz;->a:Lccc71/pmw/lib/dz;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/lib/dz;)V

    .line 1557
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->l(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->b:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1558
    iget-object v0, p0, Lccc71/pmw/lib/ds;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->l(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bG:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 1543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
