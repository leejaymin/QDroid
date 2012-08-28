.class Lorg/connectbot/GeneratePubkeyActivity$2;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/GeneratePubkeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/GeneratePubkeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, encrypted:Z
    :try_start_0
    const-string v10, "SHA1PRNG"

    invoke-static {v10}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v8

    .line 255
    .local v8, random:Ljava/security/SecureRandom;
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->entropy:[B
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$1(Lorg/connectbot/GeneratePubkeyActivity;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 257
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->keyType:Ljava/lang/String;
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$2(Lorg/connectbot/GeneratePubkeyActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 259
    .local v2, keyPairGen:Ljava/security/KeyPairGenerator;
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$3(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v10

    invoke-virtual {v2, v10, v8}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 261
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 262
    .local v3, pair:Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    .line 263
    .local v4, priv:Ljava/security/PrivateKey;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    .line 265
    .local v5, pub:Ljava/security/PublicKey;
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$4(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, secret:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 267
    const/4 v1, 0x1

    .line 269
    :cond_0
    const-string v10, "ConnectBot.GeneratePubkeyActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "private: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/connectbot/util/PubkeyUtils;->formatKey(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v10, "ConnectBot.GeneratePubkeyActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "public: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/connectbot/util/PubkeyUtils;->formatKey(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v6, Lorg/connectbot/bean/PubkeyBean;

    invoke-direct {v6}, Lorg/connectbot/bean/PubkeyBean;-><init>()V

    .line 273
    .local v6, pubkey:Lorg/connectbot/bean/PubkeyBean;
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->nickname:Landroid/widget/EditText;
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$5(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setNickname(Ljava/lang/String;)V

    .line 274
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->keyType:Ljava/lang/String;
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$2(Lorg/connectbot/GeneratePubkeyActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setType(Ljava/lang/String;)V

    .line 275
    invoke-static {v4, v9}, Lorg/connectbot/util/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setPrivateKey([B)V

    .line 276
    invoke-static {v5}, Lorg/connectbot/util/PubkeyUtils;->getEncodedPublic(Ljava/security/PublicKey;)[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setPublicKey([B)V

    .line 277
    invoke-virtual {v6, v1}, Lorg/connectbot/bean/PubkeyBean;->setEncrypted(Z)V

    .line 278
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->unlockAtStartup:Landroid/widget/CheckBox;
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$6(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/CheckBox;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setStartup(Z)V

    .line 279
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->confirmUse:Landroid/widget/CheckBox;
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$7(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/CheckBox;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setConfirmUse(Z)V

    .line 281
    new-instance v7, Lorg/connectbot/util/PubkeyDatabase;

    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    invoke-direct {v7, v10}, Lorg/connectbot/util/PubkeyDatabase;-><init>(Landroid/content/Context;)V

    .line 282
    .local v7, pubkeydb:Lorg/connectbot/util/PubkeyDatabase;
    invoke-virtual {v7, v6}, Lorg/connectbot/util/PubkeyDatabase;->savePubkey(Lorg/connectbot/bean/PubkeyBean;)Lorg/connectbot/bean/PubkeyBean;

    .line 283
    invoke-virtual {v7}, Lorg/connectbot/util/PubkeyDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v2           #keyPairGen:Ljava/security/KeyPairGenerator;
    .end local v3           #pair:Ljava/security/KeyPair;
    .end local v4           #priv:Ljava/security/PrivateKey;
    .end local v5           #pub:Ljava/security/PublicKey;
    .end local v6           #pubkey:Lorg/connectbot/bean/PubkeyBean;
    .end local v7           #pubkeydb:Lorg/connectbot/util/PubkeyDatabase;
    .end local v8           #random:Ljava/security/SecureRandom;
    .end local v9           #secret:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lorg/connectbot/GeneratePubkeyActivity$2;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lorg/connectbot/GeneratePubkeyActivity;->access$8(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "ConnectBot.GeneratePubkeyActivity"

    const-string v11, "Could not generate key pair"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
