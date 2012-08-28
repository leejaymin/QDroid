.class public Lcom/trilead/ssh2/signature/DSAPublicKey;
.super Ljava/lang/Object;
.source "DSAPublicKey.java"


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "p"
    .parameter "q"
    .parameter "g"
    .parameter "y"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->p:Ljava/math/BigInteger;

    .line 21
    iput-object p2, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->q:Ljava/math/BigInteger;

    .line 22
    iput-object p3, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->g:Ljava/math/BigInteger;

    .line 23
    iput-object p4, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->y:Ljava/math/BigInteger;

    .line 24
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method
