.class final Lccc71/pmw/lib/gv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/gr;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/gr;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iput-object p2, p0, Lccc71/pmw/lib/gv;->b:Landroid/app/AlertDialog;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 599
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;)V

    .line 601
    iget-object v0, p0, Lccc71/pmw/lib/gv;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 605
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0, v4}, Lccc71/pmw/lib/pmw_logcat;->b(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 606
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0, v4}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 607
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0, v4}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 611
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_logcat;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->d(Lccc71/pmw/lib/pmw_logcat;)V

    .line 620
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    sget v1, Lccc71/pmw/lib/d;->S:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 621
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 622
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    sget v1, Lccc71/pmw/lib/d;->ag:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 623
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    sget v1, Lccc71/pmw/lib/d;->aa:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 625
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 626
    iget-object v0, p0, Lccc71/pmw/lib/gv;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    sget v1, Lccc71/pmw/lib/d;->J:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 627
    sget v1, Lccc71/pmw/lib/g;->bA:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 628
    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 630
    sget v1, Lccc71/pmw/lib/c;->ao:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 636
    :goto_1
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 615
    const-string v1, "android_tuner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to clear logcat screen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_0
    sget v1, Lccc71/pmw/lib/c;->ao:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method
