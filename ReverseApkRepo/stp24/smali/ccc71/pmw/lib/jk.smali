.class final Lccc71/pmw/lib/jk;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_notif_scheduler;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_notif_scheduler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jk;->a:Lccc71/pmw/lib/pmw_notif_scheduler;

    iput-object p2, p0, Lccc71/pmw/lib/jk;->b:Landroid/content/Context;

    .line 278
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/jk;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    return-object v0
.end method
