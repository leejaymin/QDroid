.class public Lcom/wolfram/alpha/net/j2se/J2SEHttpProvider;
.super Ljava/lang/Object;
.source "J2SEHttpProvider.java"

# interfaces
.implements Lcom/wolfram/alpha/net/HttpProvider;


# instance fields
.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Wolfram|Alpha Java Binding 1.1"

    iput-object v0, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpProvider;->userAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createHttpTransaction(Ljava/net/URL;Lcom/wolfram/alpha/net/ProxySettings;)Lcom/wolfram/alpha/net/impl/HttpTransaction;
    .locals 2
    .parameter "url"
    .parameter "proxySettings"

    .prologue
    .line 22
    new-instance v0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;

    iget-object v1, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpProvider;->userAgent:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;-><init>(Ljava/net/URL;Lcom/wolfram/alpha/net/ProxySettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "agent"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpProvider;->userAgent:Ljava/lang/String;

    .line 28
    return-void
.end method
