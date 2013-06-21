.class final Lccc71/pmw/lib/oy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/oy;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/oy;)Lccc71/pmw/lib/pmw_sysctl;
    .locals 1
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lccc71/pmw/lib/oy;->a:Lccc71/pmw/lib/pmw_sysctl;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 473
    new-instance v0, Lccc71/pmw/lib/oz;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/oz;-><init>(Lccc71/pmw/lib/oy;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 546
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/oz;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 547
    return-void
.end method
