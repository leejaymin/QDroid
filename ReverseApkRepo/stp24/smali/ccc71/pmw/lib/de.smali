.class final Lccc71/pmw/lib/de;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    .line 493
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v1, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;[Ljava/lang/String;)V

    iput-object v1, p0, Lccc71/pmw/lib/de;->a:[Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->b(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/de;->c()Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 14
    .parameter

    .prologue
    const/high16 v13, 0x4000

    const/4 v12, -0x2

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backuplist;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    invoke-virtual {v0, v1, v1}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    invoke-virtual {v0, v10, v1}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    iget-object v2, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->r(Lccc71/pmw/lib/pmw_backuplist;)F

    move-result v2

    const/high16 v3, 0x40c0

    add-float/2addr v2, v3

    iget-object v3, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_backuplist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lccc71/pmw/lib/de;->a:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lccc71/pmw/lib/de;->a:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    new-array v5, v3, [Ljava/lang/String;

    invoke-static {v4, v5}, Lccc71/pmw/lib/pmw_backuplist;->b(Lccc71/pmw/lib/pmw_backuplist;[Ljava/lang/String;)V

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->s(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->u(Lccc71/pmw/lib/pmw_backuplist;)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_backuplist;->s(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lccc71/pmw/lib/de;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    new-instance v5, Landroid/widget/TableRow;

    iget-object v6, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-direct {v5, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/TableRow;->setId(I)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v7, Lccc71/pmw/lib/c;->P:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v2, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v11, v10, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v7, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->r(Lccc71/pmw/lib/pmw_backuplist;)F

    move-result v7

    add-float/2addr v7, v13

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x3f80

    invoke-direct {v7, v8, v12, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v11, v10, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v7, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->r(Lccc71/pmw/lib/pmw_backuplist;)F

    move-result v7

    sub-float/2addr v7, v13

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_backuplist;->t(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lccc71/pmw/lib/de;->b:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".apk"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
