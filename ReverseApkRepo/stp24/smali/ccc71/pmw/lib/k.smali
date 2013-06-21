.class final Lccc71/pmw/lib/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/at_build;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at_build;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/k;->a:Lccc71/pmw/lib/at_build;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/k;)Lccc71/pmw/lib/at_build;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lccc71/pmw/lib/k;->a:Lccc71/pmw/lib/at_build;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    new-instance v0, Lccc71/pmw/lib/l;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/l;-><init>(Lccc71/pmw/lib/k;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 166
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/l;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 167
    return-void
.end method
