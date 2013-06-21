.class final Lccc71/pmw/lib/pz;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lccc71/pmw/lib/py;

.field private final synthetic c:Lccc71/pmw/a/ah;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/py;Lccc71/pmw/a/ah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pz;->b:Lccc71/pmw/lib/py;

    iput-object p2, p0, Lccc71/pmw/lib/pz;->c:Lccc71/pmw/a/ah;

    iput-object p3, p0, Lccc71/pmw/lib/pz;->d:Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/pz;->c:Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/lib/pz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pz;->a:Z

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

    iget-boolean v0, p0, Lccc71/pmw/lib/pz;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pz;->b:Lccc71/pmw/lib/py;

    invoke-static {v0}, Lccc71/pmw/lib/py;->a(Lccc71/pmw/lib/py;)Lccc71/pmw/lib/px;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/px;->a(Lccc71/pmw/lib/px;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fA:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pz;->b:Lccc71/pmw/lib/py;

    invoke-static {v0}, Lccc71/pmw/lib/py;->a(Lccc71/pmw/lib/py;)Lccc71/pmw/lib/px;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/px;->a(Lccc71/pmw/lib/px;)Lccc71/pmw/lib/pmw_voltage_table;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fB:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
