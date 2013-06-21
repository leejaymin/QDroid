.class final Lccc71/bmw/lib/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/t;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/t;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    iput-object p2, p0, Lccc71/bmw/lib/u;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lccc71/bmw/lib/u;->c:Landroid/widget/EditText;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->cf:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 738
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->ce:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 741
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    iget-object v1, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v1}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->e(Lccc71/bmw/lib/bmw_calibration;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 745
    iget-object v1, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v1}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/u;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    .line 748
    :try_start_0
    iget-object v1, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v1}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/u;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lccc71/bmw/data/a/a;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    iget-object v1, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v1}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v2}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v2

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iget v2, v2, Lccc71/bmw/data/a/a;->c:I

    iput v2, v1, Lccc71/bmw/data/a/a;->k:I

    .line 755
    iget-object v1, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v1}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget-object v1, v1, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    new-instance v1, Lccc71/bmw/data/a/b;

    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-direct {v1, v0}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 758
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->a()V

    .line 759
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget-object v2, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v2}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v2

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccc71/bmw/data/a/b;->a(Lccc71/bmw/data/a/a;)Lccc71/bmw/data/a/a;

    move-result-object v2

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_calibration;->a(Lccc71/bmw/lib/bmw_calibration;Lccc71/bmw/data/a/a;)V

    .line 760
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    .line 762
    :cond_0
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget-object v2, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v2}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v2

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iget v2, v2, Lccc71/bmw/data/a/a;->c:I

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;I)V

    .line 767
    :goto_1
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v2, Lccc71/bmw/lib/d;->dl:I

    invoke-virtual {v0, v2}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 768
    sget v2, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget-object v2, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v2}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v2

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v2

    iput-object v2, v0, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    .line 771
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v1, v0}, Lccc71/bmw/data/a/b;->a(I)V

    .line 772
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->b()V

    .line 773
    return-void

    .line 752
    :catch_0
    move-exception v1

    iget-object v1, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v1}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    const/16 v2, 0x5dc

    iput v2, v1, Lccc71/bmw/data/a/a;->c:I

    goto/16 :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v0}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget-object v2, p0, Lccc71/bmw/lib/u;->a:Lccc71/bmw/lib/t;

    invoke-static {v2}, Lccc71/bmw/lib/t;->a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v2

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iget v2, v2, Lccc71/bmw/data/a/a;->c:I

    neg-int v2, v2

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;I)V

    goto :goto_1
.end method
