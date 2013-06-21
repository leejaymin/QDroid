.class final Lccc71/bmw/lib/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/aa;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/aa;ILandroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ab;->a:Lccc71/bmw/lib/aa;

    iput p2, p0, Lccc71/bmw/lib/ab;->b:I

    iput-object p3, p0, Lccc71/bmw/lib/ab;->c:Landroid/widget/TextView;

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1018
    iget-object v0, p0, Lccc71/bmw/lib/ab;->a:Lccc71/bmw/lib/aa;

    invoke-static {v0}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->j:I

    iget v1, p0, Lccc71/bmw/lib/ab;->b:I

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    .line 1019
    iget-object v1, p0, Lccc71/bmw/lib/ab;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mAh"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1025
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    return-void
.end method
