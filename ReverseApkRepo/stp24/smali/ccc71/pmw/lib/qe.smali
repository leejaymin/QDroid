.class final Lccc71/pmw/lib/qe;
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
    iput-object p1, p0, Lccc71/pmw/lib/qe;->a:Lccc71/pmw/lib/pmw_voltage_table;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 657
    iget-object v0, p0, Lccc71/pmw/lib/qe;->a:Lccc71/pmw/lib/pmw_voltage_table;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;I)V

    .line 658
    return-void
.end method
