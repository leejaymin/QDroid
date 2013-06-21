.class final Lccc71/pmw/lib/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ja;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ja;)Lccc71/pmw/lib/pmw_monitor;
    .locals 1
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lccc71/pmw/lib/ja;->a:Lccc71/pmw/lib/pmw_monitor;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 970
    new-instance v0, Lccc71/pmw/lib/jb;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jb;-><init>(Lccc71/pmw/lib/ja;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 987
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/jb;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 988
    return-void
.end method
