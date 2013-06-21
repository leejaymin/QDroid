.class final Lccc71/bmw/lib/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_calibration;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1080
    iget-object v0, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1085
    iget-object v1, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    const-string v2, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    iget-object v1, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-virtual {v1, v0}, Lccc71/bmw/lib/bmw_calibration;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->f:I

    iput v1, v0, Lccc71/bmw/data/a/a;->h:I

    .line 1096
    iget-object v0, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->g:I

    iput v1, v0, Lccc71/bmw/data/a/a;->i:I

    .line 1098
    iget-object v0, p0, Lccc71/bmw/lib/af;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->i(Lccc71/bmw/lib/bmw_calibration;)V

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    goto :goto_0
.end method
