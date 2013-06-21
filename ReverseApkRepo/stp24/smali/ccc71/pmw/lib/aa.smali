.class final Lccc71/pmw/lib/aa;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/at_build;

.field private b:Ljava/util/ArrayList;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at_build;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    iput-boolean p2, p0, Lccc71/pmw/lib/aa;->c:Z

    .line 332
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1
    iget-boolean v0, p0, Lccc71/pmw/lib/aa;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v0}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v2}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "build.original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/pmw/b/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/aa;->b:Ljava/util/ArrayList;

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v0}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v2}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "build.original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/pmw/b/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/aa;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 10
    .parameter

    .prologue
    const v9, -0x777723

    const/4 v8, 0x2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-virtual {v0}, Lccc71/pmw/lib/at_build;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    sget v1, Lccc71/pmw/lib/d;->c:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/at_build;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    iget-object v1, p0, Lccc71/pmw/lib/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/b;

    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_2

    iget-object v5, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v5}, Lccc71/pmw/lib/at_build;->d(Lccc71/pmw/lib/at_build;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    :cond_2
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v6, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v6, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    iget-object v6, v6, Lccc71/pmw/lib/at_build;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v6}, Lccc71/pmw/lib/at_build;->e(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v6, Lccc71/pmw/lib/c;->Q:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    iget-object v6, v6, Lccc71/pmw/lib/at_build;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v6}, Lccc71/pmw/lib/at_build;->e(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v7}, Lccc71/pmw/lib/at_build;->f(Lccc71/pmw/lib/at_build;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v7, v1, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v7}, Lccc71/pmw/lib/at_build;->g(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v7, v1, Lccc71/pmw/b/b;->c:Z

    if-eqz v7, :cond_3

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v7}, Lccc71/pmw/lib/at_build;->f(Lccc71/pmw/lib/at_build;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v7, v1, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v7}, Lccc71/pmw/lib/at_build;->h(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v7, v1, Lccc71/pmw/b/b;->c:Z

    if-nez v7, :cond_4

    iget-boolean v1, v1, Lccc71/pmw/b/b;->b:Z

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v1, p0, Lccc71/pmw/lib/aa;->a:Lccc71/pmw/lib/at_build;

    invoke-static {v1}, Lccc71/pmw/lib/at_build;->g(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0
.end method
