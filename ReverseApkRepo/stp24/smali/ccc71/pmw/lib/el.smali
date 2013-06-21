.class final Lccc71/pmw/lib/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/el;->a:Lccc71/pmw/lib/pmw_cpu;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;
    .locals 1
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lccc71/pmw/lib/el;->a:Lccc71/pmw/lib/pmw_cpu;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 606
    new-instance v0, Lccc71/pmw/lib/em;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/em;-><init>(Lccc71/pmw/lib/el;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 639
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/em;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 640
    return-void
.end method
