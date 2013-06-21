.class final Lccc71/bmw/lib/w;
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
    iput-object p1, p0, Lccc71/bmw/lib/w;->a:Lccc71/bmw/lib/bmw_calibration;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;
    .locals 1
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lccc71/bmw/lib/w;->a:Lccc71/bmw/lib/bmw_calibration;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 792
    new-instance v2, Lccc71/bmw/data/a/b;

    iget-object v0, p0, Lccc71/bmw/lib/w;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-direct {v2, v0}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 793
    invoke-virtual {v2}, Lccc71/bmw/data/a/b;->a()V

    .line 794
    iget-object v0, p0, Lccc71/bmw/lib/w;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v2, v0}, Lccc71/bmw/data/a/b;->c(I)[Lccc71/bmw/data/a/a;

    move-result-object v3

    .line 795
    array-length v4, v3

    .line 796
    add-int/lit8 v0, v4, 0x1

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    .line 797
    :goto_0
    if-lt v0, v4, :cond_0

    .line 801
    iget-object v0, p0, Lccc71/bmw/lib/w;->a:Lccc71/bmw/lib/bmw_calibration;

    sget v6, Lccc71/bmw/lib/g;->ct:I

    invoke-virtual {v0, v6}, Lccc71/bmw/lib/bmw_calibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    .line 802
    invoke-virtual {v2}, Lccc71/bmw/data/a/b;->b()V

    .line 804
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lccc71/bmw/lib/w;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lccc71/bmw/lib/g;->cH:I

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 805
    new-instance v6, Lccc71/bmw/lib/x;

    invoke-direct {v6, p0, v4, v3, v2}, Lccc71/bmw/lib/x;-><init>(Lccc71/bmw/lib/w;I[Lccc71/bmw/data/a/a;Lccc71/bmw/data/a/b;)V

    invoke-virtual {v0, v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 956
    return-void

    .line 799
    :cond_0
    aget-object v6, v3, v0

    iget-object v6, v6, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
