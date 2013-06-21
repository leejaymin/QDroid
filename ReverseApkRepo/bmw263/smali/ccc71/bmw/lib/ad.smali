.class final Lccc71/bmw/lib/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/ac;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lccc71/bmw/lib/ac;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ad;->a:Lccc71/bmw/lib/ac;

    iput p2, p0, Lccc71/bmw/lib/ad;->b:I

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1047
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lccc71/bmw/lib/ad;->a:Lccc71/bmw/lib/ac;

    iget-object v0, v0, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v0}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget v1, p0, Lccc71/bmw/lib/ad;->b:I

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;I)V

    .line 1052
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/ad;->a:Lccc71/bmw/lib/ac;

    iget-object v0, v0, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v0}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->dl:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1053
    iget v1, p0, Lccc71/bmw/lib/ad;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v0, p0, Lccc71/bmw/lib/ad;->a:Lccc71/bmw/lib/ac;

    iget-object v0, v0, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v0}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    iput v1, v0, Lccc71/bmw/data/a/a;->k:I

    .line 1057
    new-instance v0, Lccc71/bmw/data/a/b;

    iget-object v1, p0, Lccc71/bmw/lib/ad;->a:Lccc71/bmw/lib/ac;

    iget-object v1, v1, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v1}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 1058
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 1059
    iget-object v1, p0, Lccc71/bmw/lib/ad;->a:Lccc71/bmw/lib/ac;

    iget-object v1, v1, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v1}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->b(Lccc71/bmw/data/a/a;)V

    .line 1060
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 1061
    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/ad;->a:Lccc71/bmw/lib/ac;

    iget-object v0, v0, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v0}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget v1, p0, Lccc71/bmw/lib/ad;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;I)V

    goto :goto_0
.end method
