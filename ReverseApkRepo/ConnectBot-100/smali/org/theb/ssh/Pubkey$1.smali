.class final Lorg/theb/ssh/Pubkey$1;
.super Ljava/lang/Object;
.source "Pubkey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/theb/ssh/Pubkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/theb/ssh/Pubkey;


# direct methods
.method constructor <init>(Lorg/theb/ssh/Pubkey;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/theb/ssh/Pubkey$1;->this$0:Lorg/theb/ssh/Pubkey;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 73
    :try_start_0
    const-string v7, "SHA1PRNG"

    invoke-static {v7}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v7}, Lorg/theb/ssh/Pubkey;->access$0(Ljava/security/SecureRandom;)V

    .line 75
    iget-object v7, p0, Lorg/theb/ssh/Pubkey$1;->this$0:Lorg/theb/ssh/Pubkey;

    new-instance v8, Ljava/util/concurrent/Semaphore;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v8, v7, Lorg/theb/ssh/Pubkey;->entropyGathered:Ljava/util/concurrent/Semaphore;

    .line 76
    iget-object v7, p0, Lorg/theb/ssh/Pubkey$1;->this$0:Lorg/theb/ssh/Pubkey;

    invoke-virtual {v7}, Lorg/theb/ssh/Pubkey;->gatherEntropy()V

    .line 77
    iget-object v7, p0, Lorg/theb/ssh/Pubkey$1;->this$0:Lorg/theb/ssh/Pubkey;

    iget-object v7, v7, Lorg/theb/ssh/Pubkey;->entropyGathered:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 78
    invoke-static {}, Lorg/theb/ssh/Pubkey;->access$1()Ljava/security/SecureRandom;

    move-result-object v7

    iget-object v8, p0, Lorg/theb/ssh/Pubkey$1;->this$0:Lorg/theb/ssh/Pubkey;

    iget-object v8, v8, Lorg/theb/ssh/Pubkey;->entropySeed:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 79
    iget-object v7, p0, Lorg/theb/ssh/Pubkey$1;->this$0:Lorg/theb/ssh/Pubkey;

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/theb/ssh/Pubkey;->entropyGathered:Ljava/util/concurrent/Semaphore;

    .line 81
    const-string v7, "DSA"

    invoke-static {v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 82
    .local v3, keyGen:Ljava/security/KeyPairGenerator;
    const/16 v7, 0x200

    invoke-static {}, Lorg/theb/ssh/Pubkey;->access$1()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 84
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    .line 85
    .local v4, pair:Ljava/security/KeyPair;
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    .line 86
    .local v5, priv:Ljava/security/PrivateKey;
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    .line 88
    .local v6, pub:Ljava/security/PublicKey;
    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 89
    .local v0, encPriv:[B
    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 90
    .local v1, encPub:[B
    const-string v7, "SSH/priv"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v7, "SSH/pub"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3           #keyGen:Ljava/security/KeyPairGenerator;
    .end local v4           #pair:Ljava/security/KeyPair;
    .end local v5           #priv:Ljava/security/PrivateKey;
    .end local v6           #pub:Ljava/security/PublicKey;
    .end local v0           #encPriv:[B
    .end local v1           #encPub:[B
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 93
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "SSH/keygen"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
