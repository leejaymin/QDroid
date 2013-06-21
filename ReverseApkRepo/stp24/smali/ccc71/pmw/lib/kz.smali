.class final Lccc71/pmw/lib/kz;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ky;

.field private final synthetic b:Lccc71/pmw/a/ac;

.field private final synthetic c:I

.field private final synthetic d:Lccc71/pmw/a/as;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ky;Lccc71/pmw/a/ac;ILccc71/pmw/a/as;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kz;->a:Lccc71/pmw/lib/ky;

    iput-object p2, p0, Lccc71/pmw/lib/kz;->b:Lccc71/pmw/a/ac;

    iput p3, p0, Lccc71/pmw/lib/kz;->c:I

    iput-object p4, p0, Lccc71/pmw/lib/kz;->d:Lccc71/pmw/a/as;

    .line 444
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/kz;->b:Lccc71/pmw/a/ac;

    iget v1, p0, Lccc71/pmw/lib/kz;->c:I

    iput v1, v0, Lccc71/pmw/a/ac;->e:I

    iget-object v0, p0, Lccc71/pmw/lib/kz;->a:Lccc71/pmw/lib/ky;

    invoke-static {v0}, Lccc71/pmw/lib/ky;->a(Lccc71/pmw/lib/ky;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/kz;->b:Lccc71/pmw/a/ac;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Lccc71/pmw/a/ac;)V

    iget-object v0, p0, Lccc71/pmw/lib/kz;->d:Lccc71/pmw/a/as;

    iget v1, p0, Lccc71/pmw/lib/kz;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/a/as;->a(Ljava/lang/Object;Landroid/os/Handler;)V

    return-object v2
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/kz;->a:Lccc71/pmw/lib/ky;

    invoke-static {v0}, Lccc71/pmw/lib/ky;->a(Lccc71/pmw/lib/ky;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sd;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lccc71/pmw/lib/kz;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/kz;->d:Lccc71/pmw/a/as;

    invoke-virtual {v0}, Lccc71/pmw/a/as;->f()I

    move-result v0

    iget v1, p0, Lccc71/pmw/lib/kz;->c:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/kz;->a:Lccc71/pmw/lib/ky;

    invoke-static {v0}, Lccc71/pmw/lib/ky;->a(Lccc71/pmw/lib/ky;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/kz;->a:Lccc71/pmw/lib/ky;

    invoke-static {v1}, Lccc71/pmw/lib/ky;->a(Lccc71/pmw/lib/ky;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_sd;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
