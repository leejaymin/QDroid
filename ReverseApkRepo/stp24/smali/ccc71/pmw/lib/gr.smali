.class final Lccc71/pmw/lib/gr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/gr;)Lccc71/pmw/lib/pmw_logcat;
    .locals 1
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 443
    iget-object v0, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/e;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 445
    sget v1, Lccc71/pmw/lib/d;->H:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 446
    sget-boolean v2, Lccc71/pmw/b/h;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->f(Lccc71/pmw/lib/pmw_logcat;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->g(Lccc71/pmw/lib/pmw_logcat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 453
    sget v2, Lccc71/pmw/lib/d;->J:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 454
    new-instance v3, Lccc71/pmw/lib/gs;

    invoke-direct {v3, p0, v1}, Lccc71/pmw/lib/gs;-><init>(Lccc71/pmw/lib/gr;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    sget v2, Lccc71/pmw/lib/d;->K:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 592
    iget-object v3, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_logcat;->h(Lccc71/pmw/lib/pmw_logcat;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_logcat;->g(Lccc71/pmw/lib/pmw_logcat;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 593
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_2
    new-instance v3, Lccc71/pmw/lib/gv;

    invoke-direct {v3, p0, v1}, Lccc71/pmw/lib/gv;-><init>(Lccc71/pmw/lib/gr;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    sget v2, Lccc71/pmw/lib/d;->H:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 639
    sget-boolean v2, Lccc71/pmw/b/h;->c:Z

    if-eqz v2, :cond_3

    .line 641
    new-instance v2, Lccc71/pmw/lib/gw;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/gw;-><init>(Lccc71/pmw/lib/gr;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    :cond_3
    return-void
.end method
