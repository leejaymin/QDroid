.class final Lccc71/pmw/lib/hb;
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
    iput-object p1, p0, Lccc71/pmw/lib/hb;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 847
    iget-object v0, p0, Lccc71/pmw/lib/hb;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->i(Lccc71/pmw/lib/pmw_logcat;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lccc71/pmw/lib/hb;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->j(Lccc71/pmw/lib/pmw_logcat;)V

    .line 856
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/hb;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_logcat;->registerForContextMenu(Landroid/view/View;)V

    .line 854
    iget-object v0, p0, Lccc71/pmw/lib/hb;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_logcat;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method
