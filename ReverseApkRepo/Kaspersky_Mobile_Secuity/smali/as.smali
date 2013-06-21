.class public final Las;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/kavsdk/antivirus/AvFsMonitor;


# direct methods
.method public constructor <init>(Lcom/kavsdk/antivirus/AvFsMonitor;Lcom/kavsdk/antivirus/AvFsMonitor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Las;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    .line 241
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Las;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->a(Lcom/kavsdk/antivirus/AvFsMonitor;)Z

    move-result v0

    return v0
.end method

.method public final finalize()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Las;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->e()V

    .line 250
    return-void
.end method
