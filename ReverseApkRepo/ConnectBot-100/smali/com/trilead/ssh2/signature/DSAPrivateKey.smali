.class public Lcom/trilead/ssh2/signature/DSAPrivateKey;
.super Ljava/lang/Object;
.source "DSAPrivateKey.java"


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "p"
    .parameter "q"
    .parameter "g"
    .parameter "y"
    .parameter "x"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    .line 23
    iput-object p2, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    .line 24
    iput-object p3, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    .line 25
    iput-object p4, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    .line 26
    iput-object p5, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->x:Ljava/math/BigInteger;

    .line 27
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lcom/trilead/ssh2/signature/DSAPublicKey;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/trilead/ssh2/signature/DSAPublicKey;

    iget-object v1, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/trilead/ssh2/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method
