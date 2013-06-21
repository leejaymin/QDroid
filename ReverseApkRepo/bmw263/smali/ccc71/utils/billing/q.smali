.class final Lccc71/utils/billing/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/utils/billing/p;


# direct methods
.method constructor <init>(Lccc71/utils/billing/p;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/billing/q;->a:Lccc71/utils/billing/p;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lccc71/utils/billing/q;->a:Lccc71/utils/billing/p;

    invoke-static {v0}, Lccc71/utils/billing/p;->a(Lccc71/utils/billing/p;)V

    .line 132
    iget-object v0, p0, Lccc71/utils/billing/q;->a:Lccc71/utils/billing/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccc71/utils/billing/p;->e:Z

    .line 139
    iget-object v0, p0, Lccc71/utils/billing/q;->a:Lccc71/utils/billing/p;

    iget-object v0, v0, Lccc71/utils/billing/p;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    return-void
.end method
