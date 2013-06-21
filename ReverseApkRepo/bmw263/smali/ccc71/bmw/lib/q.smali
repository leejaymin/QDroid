.class final Lccc71/bmw/lib/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/o;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/o;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    iput-object p2, p0, Lccc71/bmw/lib/q;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lccc71/bmw/lib/q;->c:Landroid/widget/EditText;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 666
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/lib/q;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 667
    iget-object v1, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    invoke-static {v1}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1, v0}, Lccc71/bmw/lib/bmw_settings;->f(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccc71/bmw/lib/q;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 677
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    invoke-static {v1}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1, v0}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;I)V

    .line 682
    :goto_1
    iget-object v0, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    invoke-static {v0}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->dl:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 683
    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 689
    :goto_2
    iget-object v0, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    invoke-static {v0}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->c(Lccc71/bmw/lib/bmw_calibration;)V

    .line 690
    iget-object v0, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    invoke-static {v0}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->d(Lccc71/bmw/lib/bmw_calibration;)V

    .line 692
    return-void

    .line 671
    :catch_0
    move-exception v0

    iget-object v0, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    invoke-static {v0}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->f(Landroid/content/Context;I)V

    goto :goto_0

    .line 680
    :cond_0
    :try_start_2
    iget-object v1, p0, Lccc71/bmw/lib/q;->a:Lccc71/bmw/lib/o;

    invoke-static {v1}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    neg-int v0, v0

    invoke-static {v1, v0}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
