.class final Lccc71/bmw/lib/aa;
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
    iput-object p1, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;
    .locals 1
    .parameter

    .prologue
    .line 979
    iget-object v0, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 984
    iget-object v0, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 989
    iget-object v1, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    const-string v2, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    iget-object v1, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-virtual {v1, v0}, Lccc71/bmw/lib/bmw_calibration;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_3

    :cond_2
    sget v0, Lccc71/bmw/lib/g;->cP:I

    move v2, v0

    .line 1001
    :goto_1
    iget-object v0, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->j:I

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_calibration;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/e;->bj:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1005
    sget v0, Lccc71/bmw/lib/d;->do:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v4

    iget v4, v4, Lccc71/bmw/data/a/a;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "mAh"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    sget v1, Lccc71/bmw/lib/d;->cu:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 1009
    iget-object v4, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v4

    iget v4, v4, Lccc71/bmw/data/a/a;->j:I

    iget-object v5, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v5

    iget v5, v5, Lccc71/bmw/data/a/a;->m:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    .line 1010
    mul-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1011
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1013
    new-instance v5, Lccc71/bmw/lib/ab;

    invoke-direct {v5, p0, v4, v0}, Lccc71/bmw/lib/ab;-><init>(Lccc71/bmw/lib/aa;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1033
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lccc71/bmw/lib/aa;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1034
    const v3, 0x104000a

    new-instance v5, Lccc71/bmw/lib/ac;

    invoke-direct {v5, p0, v1, v4, v2}, Lccc71/bmw/lib/ac;-><init>(Lccc71/bmw/lib/aa;Landroid/widget/SeekBar;II)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1064
    const/high16 v1, 0x104

    new-instance v2, Lccc71/bmw/lib/ae;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/ae;-><init>(Lccc71/bmw/lib/aa;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 999
    :cond_3
    sget v0, Lccc71/bmw/lib/g;->cO:I

    move v2, v0

    goto/16 :goto_1

    .line 996
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
