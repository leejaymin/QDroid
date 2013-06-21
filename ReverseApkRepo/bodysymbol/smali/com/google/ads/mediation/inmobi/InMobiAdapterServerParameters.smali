.class public Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;
.super Lcom/google/ads/mediation/MediationServerParameters;
.source "InMobiAdapterServerParameters.java"


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$Parameter;
        name = "pubid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V

    return-void
.end method
