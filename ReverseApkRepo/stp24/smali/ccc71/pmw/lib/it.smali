.class final Lccc71/pmw/lib/it;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/v;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/it;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1190
    iget-object v0, p0, Lccc71/pmw/lib/it;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, p2}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 1191
    iget-object v0, p0, Lccc71/pmw/lib/it;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_monitor;->f()V

    .line 1192
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1185
    return-void
.end method
