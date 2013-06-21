.class final Lccc71/utils/billing/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lccc71/utils/billing/d;

.field private final synthetic e:J

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccc71/utils/billing/d;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/billing/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lccc71/utils/billing/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lccc71/utils/billing/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lccc71/utils/billing/g;->d:Lccc71/utils/billing/d;

    iput-wide p5, p0, Lccc71/utils/billing/g;->e:J

    iput-object p7, p0, Lccc71/utils/billing/g;->f:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 51
    new-instance v0, Lccc71/utils/billing/r;

    iget-object v1, p0, Lccc71/utils/billing/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/utils/billing/r;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Lccc71/utils/billing/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lccc71/utils/billing/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lccc71/utils/billing/g;->d:Lccc71/utils/billing/d;

    iget-wide v4, p0, Lccc71/utils/billing/g;->e:J

    iget-object v6, p0, Lccc71/utils/billing/g;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/billing/r;->a(Ljava/lang/String;Ljava/lang/String;Lccc71/utils/billing/d;JLjava/lang/String;)I

    move-result v3

    .line 53
    invoke-virtual {v0}, Lccc71/utils/billing/r;->a()V

    .line 55
    const-class v7, Lccc71/utils/billing/f;

    monitor-enter v7

    .line 57
    :try_start_0
    invoke-static {}, Lccc71/utils/billing/f;->b()Lccc71/utils/billing/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lccc71/utils/billing/f;->b()Lccc71/utils/billing/t;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/billing/g;->d:Lccc71/utils/billing/d;

    iget-object v2, p0, Lccc71/utils/billing/g;->c:Ljava/lang/String;

    iget-wide v4, p0, Lccc71/utils/billing/g;->e:J

    iget-object v6, p0, Lccc71/utils/billing/g;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/billing/t;->a(Lccc71/utils/billing/d;Ljava/lang/String;IJLjava/lang/String;)V

    .line 55
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method
