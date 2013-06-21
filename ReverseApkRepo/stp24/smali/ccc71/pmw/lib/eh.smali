.class final Lccc71/pmw/lib/eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/eh;->a:Lccc71/pmw/lib/pmw_cpu;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;
    .locals 1
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lccc71/pmw/lib/eh;->a:Lccc71/pmw/lib/pmw_cpu;

    return-object v0
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 454
    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 455
    iget-object v2, p0, Lccc71/pmw/lib/eh;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    new-instance v2, Lccc71/pmw/lib/ei;

    invoke-direct {v2, p0, v1, v0, p1}, Lccc71/pmw/lib/ei;-><init>(Lccc71/pmw/lib/eh;Ljava/lang/String;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 537
    invoke-virtual {v2, v0}, Lccc71/pmw/lib/ei;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 539
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    return-void
.end method
