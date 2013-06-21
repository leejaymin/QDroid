.class final Lccc71/pmw/lib/lb;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/la;

.field private final synthetic b:Lccc71/pmw/a/ac;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lccc71/pmw/a/aq;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/la;Lccc71/pmw/a/ac;Ljava/lang/String;Lccc71/pmw/a/aq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/lb;->a:Lccc71/pmw/lib/la;

    iput-object p2, p0, Lccc71/pmw/lib/lb;->b:Lccc71/pmw/a/ac;

    iput-object p3, p0, Lccc71/pmw/lib/lb;->c:Ljava/lang/String;

    iput-object p4, p0, Lccc71/pmw/lib/lb;->d:Lccc71/pmw/a/aq;

    .line 493
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/lb;->b:Lccc71/pmw/a/ac;

    iget-object v1, p0, Lccc71/pmw/lib/lb;->c:Ljava/lang/String;

    iput-object v1, v0, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/lb;->a:Lccc71/pmw/lib/la;

    invoke-static {v0}, Lccc71/pmw/lib/la;->a(Lccc71/pmw/lib/la;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/lb;->b:Lccc71/pmw/a/ac;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Lccc71/pmw/a/ac;)V

    iget-object v0, p0, Lccc71/pmw/lib/lb;->d:Lccc71/pmw/a/aq;

    iget-object v1, p0, Lccc71/pmw/lib/lb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/a/aq;->a(Ljava/lang/Object;Landroid/os/Handler;)V

    return-object v2
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/lb;->a:Lccc71/pmw/lib/la;

    invoke-static {v0}, Lccc71/pmw/lib/la;->a(Lccc71/pmw/lib/la;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sd;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/lb;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/lb;->c:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/lb;->d:Lccc71/pmw/a/aq;

    invoke-virtual {v1}, Lccc71/pmw/a/aq;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/lb;->a:Lccc71/pmw/lib/la;

    invoke-static {v0}, Lccc71/pmw/lib/la;->a(Lccc71/pmw/lib/la;)Lccc71/pmw/lib/pmw_sd;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/lb;->a:Lccc71/pmw/lib/la;

    invoke-static {v1}, Lccc71/pmw/lib/la;->a(Lccc71/pmw/lib/la;)Lccc71/pmw/lib/pmw_sd;

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
