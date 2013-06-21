.class final Lccc71/pmw/lib/ei;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lccc71/pmw/lib/eh;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/widget/ArrayAdapter;

.field private final synthetic g:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/eh;Ljava/lang/String;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    iput-object p2, p0, Lccc71/pmw/lib/ei;->c:Ljava/lang/String;

    iput-object p3, p0, Lccc71/pmw/lib/ei;->d:Landroid/widget/ArrayAdapter;

    iput-object p4, p0, Lccc71/pmw/lib/ei;->g:Landroid/widget/AdapterView;

    .line 457
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v0}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    iget-object v0, p0, Lccc71/pmw/lib/ei;->c:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/a/ah;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v0}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/ei;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ei;->d([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v0}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v0}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    const-string v2, "ondemand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v1}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->D(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v2}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->E(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v3}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/ah;->a(III)V

    :cond_2
    :goto_1
    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v0}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->b(Lccc71/pmw/lib/pmw_cpu;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    const-string v2, "interactive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v1}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->H(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v2}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    invoke-static {v0, v1}, Lccc71/pmw/a/ah;->a(II)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    const-string v2, "conservative"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v1}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->F(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v2}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->G(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v3}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/ah;->b(III)V

    goto :goto_1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v0}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v0}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    iput-object v1, v0, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v1, p0, Lccc71/pmw/lib/ei;->b:Lccc71/pmw/lib/eh;

    invoke-static {v1}, Lccc71/pmw/lib/eh;->a(Lccc71/pmw/lib/eh;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->dx:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/ei;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ei;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/ei;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ei;->g:Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
