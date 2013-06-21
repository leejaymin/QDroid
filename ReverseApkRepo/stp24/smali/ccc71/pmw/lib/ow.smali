.class final Lccc71/pmw/lib/ow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ow;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ow;)Lccc71/pmw/lib/pmw_sysctl;
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lccc71/pmw/lib/ow;->a:Lccc71/pmw/lib/pmw_sysctl;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 395
    new-instance v0, Lccc71/pmw/lib/ox;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ox;-><init>(Lccc71/pmw/lib/ow;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 464
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ox;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 465
    return-void
.end method
