.class final Lccc71/pmw/lib/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ej;->a:Lccc71/pmw/lib/pmw_cpu;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ej;)Lccc71/pmw/lib/pmw_cpu;
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lccc71/pmw/lib/ej;->a:Lccc71/pmw/lib/pmw_cpu;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 564
    new-instance v0, Lccc71/pmw/lib/ek;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ek;-><init>(Lccc71/pmw/lib/ej;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 597
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ek;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 598
    return-void
.end method
