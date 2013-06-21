.class public final LeU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, LeU;->b:Lcom/kms/kmsshared/KMSApplication;

    iput-object p2, p0, LeU;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1010
    iget-object v0, p0, LeU;->a:Ljava/lang/String;

    iget-object v1, p0, LeU;->b:Lcom/kms/kmsshared/KMSApplication;

    const v2, 0x7f0801e0

    invoke-virtual {v1, v2}, Lcom/kms/kmsshared/KMSApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1012
    new-instance v0, Lcw;

    invoke-direct {v0, v3}, Lcw;-><init>(Z)V

    iget-object v1, p0, LeU;->b:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0, v1}, Lcw;->a(Landroid/content/Context;)V

    .line 1014
    return-void
.end method
