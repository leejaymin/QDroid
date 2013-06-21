.class final Lccc71/pmw/lib/pw;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lccc71/pmw/lib/pv;

.field private final synthetic c:Lccc71/pmw/a/ah;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pv;Lccc71/pmw/a/ah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pw;->b:Lccc71/pmw/lib/pv;

    iput-object p2, p0, Lccc71/pmw/lib/pw;->c:Lccc71/pmw/a/ah;

    iput-object p3, p0, Lccc71/pmw/lib/pw;->d:Ljava/lang/String;

    .line 481
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/pw;->c:Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/lib/pw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pw;->a:Z

    iget-object v0, p0, Lccc71/pmw/lib/pw;->b:Lccc71/pmw/lib/pv;

    iget-object v0, v0, Lccc71/pmw/lib/pv;->a:Lccc71/pmw/lib/pu;

    invoke-static {v0}, Lccc71/pmw/lib/pu;->a(Lccc71/pmw/lib/pu;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pw;->c:Lccc71/pmw/a/ah;

    invoke-virtual {v1}, Lccc71/pmw/a/ah;->s()[[I

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;[[I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lccc71/pmw/lib/pw;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pw;->b:Lccc71/pmw/lib/pv;

    iget-object v0, v0, Lccc71/pmw/lib/pv;->a:Lccc71/pmw/lib/pu;

    invoke-static {v0}, Lccc71/pmw/lib/pu;->a(Lccc71/pmw/lib/pu;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fv:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pw;->b:Lccc71/pmw/lib/pv;

    iget-object v0, v0, Lccc71/pmw/lib/pv;->a:Lccc71/pmw/lib/pu;

    invoke-static {v0}, Lccc71/pmw/lib/pu;->a(Lccc71/pmw/lib/pu;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pw;->b:Lccc71/pmw/lib/pv;

    iget-object v0, v0, Lccc71/pmw/lib/pv;->a:Lccc71/pmw/lib/pu;

    invoke-static {v0}, Lccc71/pmw/lib/pu;->a(Lccc71/pmw/lib/pu;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fw:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
