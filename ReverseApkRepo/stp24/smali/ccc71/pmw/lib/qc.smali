.class final Lccc71/pmw/lib/qc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_voltage_table;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/qc;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/qc;)Lccc71/pmw/lib/pmw_voltage_table;
    .locals 1
    .parameter

    .prologue
    .line 617
    iget-object v0, p0, Lccc71/pmw/lib/qc;->a:Lccc71/pmw/lib/pmw_voltage_table;

    return-object v0
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 622
    new-instance v0, Lccc71/pmw/lib/qd;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qd;-><init>(Lccc71/pmw/lib/qc;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 646
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/qd;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 648
    const/4 v0, 0x1

    return v0
.end method
