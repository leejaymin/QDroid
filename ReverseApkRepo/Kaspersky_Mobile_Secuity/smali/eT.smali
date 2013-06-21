.class public final LeT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LfZ;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;LfZ;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, LeT;->c:Lcom/kms/kmsshared/KMSApplication;

    iput-object p2, p0, LeT;->a:LfZ;

    iput-object p3, p0, LeT;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 983
    iget-object v0, p0, LeT;->a:LfZ;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 986
    new-instance v1, Lcw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcw;-><init>(Z)V

    invoke-virtual {v1, v0}, Lcw;->a(Z)Lcw;

    move-result-object v0

    iget-object v1, p0, LeT;->c:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0, v1}, Lcw;->a(Landroid/content/Context;)V

    .line 989
    iget-object v0, p0, LeT;->b:Ljava/lang/String;

    iget-object v1, p0, LeT;->c:Lcom/kms/kmsshared/KMSApplication;

    const v2, 0x7f0801e0

    invoke-virtual {v1, v2}, Lcom/kms/kmsshared/KMSApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 991
    return-void
.end method
