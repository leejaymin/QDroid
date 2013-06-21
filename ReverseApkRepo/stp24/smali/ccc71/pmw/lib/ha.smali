.class final Lccc71/pmw/lib/ha;
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
    iput-object p1, p0, Lccc71/pmw/lib/ha;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 837
    iget-object v0, p0, Lccc71/pmw/lib/ha;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_logcat;->registerForContextMenu(Landroid/view/View;)V

    .line 838
    iget-object v0, p0, Lccc71/pmw/lib/ha;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_logcat;->openContextMenu(Landroid/view/View;)V

    .line 839
    return-void
.end method
