.class final Lccc71/bmw/lib/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/aa;

.field private final synthetic b:Landroid/widget/SeekBar;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lccc71/bmw/lib/aa;Landroid/widget/SeekBar;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    iput-object p2, p0, Lccc71/bmw/lib/ac;->b:Landroid/widget/SeekBar;

    iput p3, p0, Lccc71/bmw/lib/ac;->c:I

    iput p4, p0, Lccc71/bmw/lib/ac;->d:I

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1039
    iget-object v0, p0, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v0}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->j:I

    iget-object v1, p0, Lccc71/bmw/lib/ac;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lccc71/bmw/lib/ac;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1041
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccc71/bmw/lib/ac;->a:Lccc71/bmw/lib/aa;

    invoke-static {v2}, Lccc71/bmw/lib/aa;->a(Lccc71/bmw/lib/aa;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lccc71/bmw/lib/ac;->d:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1042
    const v2, 0x1040013

    new-instance v3, Lccc71/bmw/lib/ad;

    invoke-direct {v3, p0, v0}, Lccc71/bmw/lib/ad;-><init>(Lccc71/bmw/lib/ac;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1062
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1063
    return-void
.end method
