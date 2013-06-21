.class final Lccc71/pmw/lib/pr;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_voltage_table;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pr;->a:Lccc71/pmw/lib/pmw_voltage_table;

    iput-object p2, p0, Lccc71/pmw/lib/pr;->b:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/pr;->a:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pr;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->h(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
