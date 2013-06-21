.class final Lccc71/bmw/lib/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/o;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/o;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/p;->a:Lccc71/bmw/lib/o;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lccc71/bmw/lib/p;->a:Lccc71/bmw/lib/o;

    invoke-static {v0}, Lccc71/bmw/lib/o;->a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->b(Lccc71/bmw/lib/bmw_calibration;)V

    .line 655
    return-void
.end method
