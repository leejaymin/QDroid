.class public Lcom/google/ads/mediation/customevent/CustomEventServerParameters;
.super Lcom/google/ads/mediation/MediationServerParameters;


# instance fields
.field public className:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public parameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->parameter:Ljava/lang/String;

    return-void
.end method
