.class Lcom/ui/LapseIt/Main$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lnet/robotmedia/billing/BillingController$IConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/Main;->checkCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/Main;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/Main$3;->this$0:Lcom/ui/LapseIt/Main;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObfuscationSalt()[B
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x29t
        0xa6t
        0x8ct
        0xd7t
        0x42t
        0xcbt
        0x7at
        0x92t
        0x81t
        0xa0t
        0xa8t
        0x4dt
        0x7ft
        0x73t
        0x1t
        0x49t
        0x39t
        0x6et
        0x30t
        0x8ct
    .end array-data
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi3eBwuMj1fdHhX87nR20IDWfqMC+vHQohXinS6pmwRU2qFGgY8QkagrrzRCtYonK6+TFvuAus6h3yZvXapdY91H/cxRR7gvLU+jaXhdxo4v8bZvc9uueyeJptPdw8tjx6x2bdPdStLOWzPfPxiCoQhMWoIKkgM6ixQC0HLOCBsy2OFZHj2lugUjm1vQTugUTcm60xbHnMXWxPYY4k6mxREfPZOTOuZJ0Dm1st9Sph8T1/LLU67IwYHyRp3lo3Q3+GEI0PM4kAssvw61Bo4pSeJZGRd7PTabpZ1ixG90SjJxnUFAwOfFumH1zQmJ5TfzKTbDqzHDZQu6rp+jUx72HFQIDAQAB"

    return-object v0
.end method
