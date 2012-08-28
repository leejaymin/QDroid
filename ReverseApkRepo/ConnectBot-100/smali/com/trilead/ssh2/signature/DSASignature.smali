.class public Lcom/trilead/ssh2/signature/DSASignature;
.super Ljava/lang/Object;
.source "DSASignature.java"


# instance fields
.field private r:Ljava/math/BigInteger;

.field private s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "r"
    .parameter "s"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/trilead/ssh2/signature/DSASignature;->r:Ljava/math/BigInteger;

    .line 19
    iput-object p2, p0, Lcom/trilead/ssh2/signature/DSASignature;->s:Ljava/math/BigInteger;

    .line 20
    return-void
.end method


# virtual methods
.method public getR()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSASignature;->r:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/trilead/ssh2/signature/DSASignature;->s:Ljava/math/BigInteger;

    return-object v0
.end method
