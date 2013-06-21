.class final Lccc71/pmw/lib/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_voltage_table;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/qa;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/qa;)Lccc71/pmw/lib/pmw_voltage_table;
    .locals 1
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lccc71/pmw/lib/qa;->a:Lccc71/pmw/lib/pmw_voltage_table;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 589
    new-instance v0, Lccc71/pmw/lib/qb;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qb;-><init>(Lccc71/pmw/lib/qa;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 613
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/qb;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 614
    return-void
.end method
