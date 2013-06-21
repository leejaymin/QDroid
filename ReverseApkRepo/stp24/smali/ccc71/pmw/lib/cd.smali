.class final Lccc71/pmw/lib/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bz;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bz;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cd;->a:Lccc71/pmw/lib/bz;

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1286
    iget-object v0, p0, Lccc71/pmw/lib/cd;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1287
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1288
    iget-object v1, p0, Lccc71/pmw/lib/cd;->a:Lccc71/pmw/lib/bz;

    invoke-static {v1}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->H(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1290
    iget-object v0, p0, Lccc71/pmw/lib/cd;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->I(Lccc71/pmw/lib/pmw_applist;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lccc71/pmw/lib/cd;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->iw:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1293
    if-eqz v0, :cond_0

    .line 1294
    const/4 v1, 0x0

    iget-object v2, p0, Lccc71/pmw/lib/cd;->a:Lccc71/pmw/lib/bz;

    invoke-static {v2}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->I(Lccc71/pmw/lib/pmw_applist;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1296
    :cond_0
    return-void
.end method
