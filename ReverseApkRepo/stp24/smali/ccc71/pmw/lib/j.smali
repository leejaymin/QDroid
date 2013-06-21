.class final Lccc71/pmw/lib/j;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:I

.field final synthetic c:Lccc71/pmw/lib/at_auto_kill_service;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at_auto_kill_service;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/j;->c:Lccc71/pmw/lib/at_auto_kill_service;

    iput-object p2, p0, Lccc71/pmw/lib/j;->d:Landroid/content/Context;

    .line 70
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lccc71/utils/android/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/j;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lccc71/pmw/lib/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/j;->b:I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/j;->d:Landroid/content/Context;

    iget v1, p0, Lccc71/pmw/lib/j;->b:I

    iget-object v2, p0, Lccc71/pmw/lib/j;->a:Ljava/util/ArrayList;

    sget-boolean v3, Lccc71/pmw/lib/at_auto_kill_service;->b:Z

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/lib/at_auto_kill_service;->a(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    iget-object v0, p0, Lccc71/pmw/lib/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->a(Landroid/content/Context;)V

    return-void
.end method
