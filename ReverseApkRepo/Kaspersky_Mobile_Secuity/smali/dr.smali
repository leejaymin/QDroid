.class public final Ldr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSEnterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSEnterCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Ldr;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Ldr;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSEnterCodeActivity;->b(Lcom/kms/gui/KMSEnterCodeActivity;)V

    .line 911
    return-void
.end method
