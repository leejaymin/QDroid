.class public final Lcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfM;
.implements Lfa;


# instance fields
.field private final a:Lct;

.field private b:LfE;


# direct methods
.method public constructor <init>(Lct;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcu;->a:Lct;

    .line 21
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 22
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->m()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    invoke-virtual {v0, p0}, Lcom/kms/kmsshared/KMSApplication;->a(Lfa;)V

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/kms/kmsdaemon/KMSDaemon;->c()LfE;

    move-result-object v0

    iput-object v0, p0, Lcu;->b:LfE;

    .line 30
    iget-object v0, p0, Lcu;->b:LfE;

    invoke-virtual {v0, p0}, LfE;->a(LfM;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcu;->b:LfE;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcu;->b:LfE;

    invoke-virtual {v0, p0}, LfE;->b(LfM;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final a(Landroid/telephony/ServiceState;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcu;->b:LfE;

    invoke-virtual {v0}, LfE;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcu;->b:LfE;

    invoke-virtual {v0}, LfE;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcu;->a:Lct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcu;->a:Lct;

    invoke-virtual {v0}, Lct;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcu;->a:Lct;

    invoke-virtual {v0}, Lct;->interrupt()V

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 46
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->m()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->c()LfE;

    move-result-object v0

    iput-object v0, p0, Lcu;->b:LfE;

    .line 48
    iget-object v0, p0, Lcu;->b:LfE;

    invoke-virtual {v0, p0}, LfE;->a(LfM;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
