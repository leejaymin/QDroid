.class public Lcom/kms/kmsdaemon/KMSDaemon$Binder;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/kmsdaemon/KMSDaemon;


# direct methods
.method public constructor <init>(Lcom/kms/kmsdaemon/KMSDaemon;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kms/kmsdaemon/KMSDaemon$Binder;->a:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/kms/kmsdaemon/KMSDaemon;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon$Binder;->a:Lcom/kms/kmsdaemon/KMSDaemon;

    return-object v0
.end method
