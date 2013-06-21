.class public abstract Lccc71/utils/billing/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field public e:Z

.field protected final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/billing/t;->e:Z

    .line 30
    iput-object p1, p0, Lccc71/utils/billing/t;->a:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lccc71/utils/billing/t;->f:Landroid/os/Handler;

    .line 32
    return-void
.end method


# virtual methods
.method final a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/billing/t;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lccc71/utils/android/y;->a(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public abstract a(Lccc71/utils/billing/d;Ljava/lang/String;)V
.end method

.method final a(Lccc71/utils/billing/d;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v8, p0, Lccc71/utils/billing/t;->f:Landroid/os/Handler;

    new-instance v0, Lccc71/utils/billing/u;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lccc71/utils/billing/u;-><init>(Lccc71/utils/billing/t;Lccc71/utils/billing/d;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public abstract a(Lccc71/utils/billing/e;)V
.end method

.method public abstract a(Z)V
.end method
