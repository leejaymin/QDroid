.class final Lccc71/pmw/lib/os;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/os;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 314
    if-nez p2, :cond_0

    .line 316
    iget-object v0, p0, Lccc71/pmw/lib/os;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0, p1}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/os;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0, p1}, Lccc71/pmw/lib/pmw_sysctl;->c(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    goto :goto_0
.end method
