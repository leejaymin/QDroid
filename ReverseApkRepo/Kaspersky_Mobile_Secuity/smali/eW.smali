.class public final LeW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1232
    iput-object p2, p0, LeW;->a:Ljava/lang/String;

    iput-object p3, p0, LeW;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, LeW;->a:Ljava/lang/String;

    invoke-static {v0}, Lfp;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LeW;->a:Ljava/lang/String;

    invoke-static {v0}, Lfp;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->B()LbQ;

    move-result-object v0

    iget-object v1, p0, LeW;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LbQ;->a(Ljava/lang/String;)V

    .line 1244
    :cond_1
    return-void
.end method
