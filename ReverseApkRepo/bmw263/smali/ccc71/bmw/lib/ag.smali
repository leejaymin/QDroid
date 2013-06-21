.class final Lccc71/bmw/lib/ag;
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
    iput-object p1, p0, Lccc71/bmw/lib/ag;->a:Lccc71/bmw/lib/bmw_calibration;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lccc71/bmw/lib/ag;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->b(Lccc71/bmw/lib/bmw_calibration;)V

    .line 92
    return-void
.end method
