.class final Lccc71/pmw/lib/jr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/v;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jr;->a:Lccc71/pmw/lib/pmw_process;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lccc71/pmw/lib/jr;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0, p2}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 693
    iget-object v0, p0, Lccc71/pmw/lib/jr;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->h()V

    .line 694
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 687
    return-void
.end method
