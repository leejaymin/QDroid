.class public Lcom/trilead/ssh2/signature/RSAPublicKey;
.super Ljava/lang/Object;
.source "RSAPublicKey.java"


# instance fields
.field e:Ljava/math/BigInteger;

.field n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "e"
    .parameter "n"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/trilead/ssh2/signature/RSAPublicKey;->e:Ljava/math/BigInteger;

    .line 19
    iput-object p2, p0, Lcom/trilead/ssh2/signature/RSAPublicKey;->n:Ljava/math/BigInteger;

    .line 20
    return-void
.end method


# virtual methods
.method public getE()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPublicKey;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPublicKey;->n:Ljava/math/BigInteger;

    return-object v0
.end method
