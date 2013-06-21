.class public final Lez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/KMSApplication;

.field private synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;Lcom/kms/kmsshared/KMSApplication;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p2, p0, Lez;->a:Lcom/kms/kmsshared/KMSApplication;

    iput-boolean p3, p0, Lez;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lez;->a:Lcom/kms/kmsshared/KMSApplication;

    iget-boolean v1, p0, Lez;->b:Z

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(Z)V

    .line 55
    return-void
.end method
