.class public final LeN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/kms/kmsdaemon/TimeUpdatedReceiver;->a(Lfo;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lfp;->k()I

    move-result v0

    .line 18
    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {}, LdT;->c()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 21
    invoke-static {}, LdT;->e()V

    .line 22
    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfy;->b(I)V

    .line 27
    :cond_0
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
