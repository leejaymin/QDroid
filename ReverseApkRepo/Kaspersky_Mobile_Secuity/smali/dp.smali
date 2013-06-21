.class public final Ldp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgb;

.field private synthetic b:Lcom/kms/gui/KMSEnterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSEnterCodeActivity;Lgb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Ldp;->b:Lcom/kms/gui/KMSEnterCodeActivity;

    iput-object p2, p0, Ldp;->a:Lgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lx;->a()Lx;

    move-result-object v0

    .line 199
    const-string v1, "UA-32219612-1"

    iget-object v2, p0, Ldp;->b:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-virtual {v2}, Lcom/kms/gui/KMSEnterCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 200
    const-string v1, "AndroidPremiumPromo"

    invoke-virtual {v0, v1}, Lx;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lx;->b()Z

    move-result v1

    .line 207
    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Ldp;->a:Lgb;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgb;->a(ILjava/lang/Object;)V

    .line 210
    iget-object v1, p0, Ldp;->a:Lgb;

    invoke-virtual {v1}, Lgb;->a()V

    .line 212
    :cond_0
    invoke-virtual {v0}, Lx;->d()V

    .line 213
    return-void
.end method
