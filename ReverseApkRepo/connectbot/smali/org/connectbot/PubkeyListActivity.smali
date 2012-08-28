.class public Lorg/connectbot/PubkeyListActivity;
.super Landroid/app/ListActivity;
.source "PubkeyListActivity.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;
    }
.end annotation


# instance fields
.field protected bound:Lorg/connectbot/service/TerminalManager;

.field protected clipboard:Landroid/text/ClipboardManager;

.field private confirmUse:Landroid/view/MenuItem;

.field private connection:Landroid/content/ServiceConnection;

.field protected inflater:Landroid/view/LayoutInflater;

.field private onstartToggle:Landroid/view/MenuItem;

.field protected pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

.field private pubkeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PubkeyBean;",
            ">;"
        }
    .end annotation
.end field

.field protected updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 98
    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->inflater:Landroid/view/LayoutInflater;

    .line 100
    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    .line 102
    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->onstartToggle:Landroid/view/MenuItem;

    .line 103
    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->confirmUse:Landroid/view/MenuItem;

    .line 105
    new-instance v0, Lorg/connectbot/PubkeyListActivity$1;

    invoke-direct {v0, p0}, Lorg/connectbot/PubkeyListActivity$1;-><init>(Lorg/connectbot/PubkeyListActivity;)V

    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->connection:Landroid/content/ServiceConnection;

    .line 470
    new-instance v0, Lorg/connectbot/PubkeyListActivity$2;

    invoke-direct {v0, p0}, Lorg/connectbot/PubkeyListActivity$2;-><init>(Lorg/connectbot/PubkeyListActivity;)V

    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/PubkeyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    invoke-direct {p0}, Lorg/connectbot/PubkeyListActivity;->pickFileSimple()V

    return-void
.end method

.method static synthetic access$1(Lorg/connectbot/PubkeyListActivity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lorg/connectbot/PubkeyListActivity;->readKeyFromFile(Ljava/io/File;)V

    return-void
.end method

.method private pickFileSimple()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x104

    const/4 v7, 0x0

    .line 576
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 577
    .local v4, sdcard:Ljava/io/File;
    const-string v6, "ConnectBot.PubkeyListActivity"

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, state:Ljava/lang/String;
    const-string v6, "mounted_ro"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 582
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 583
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 585
    invoke-virtual {v6, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 615
    :goto_0
    return-void

    .line 589
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 591
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 592
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 593
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_1
    if-lt v6, v9, :cond_2

    .line 599
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 601
    new-array v6, v7, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 602
    .local v3, namesList:[Ljava/lang/String;
    const-string v6, "ConnectBot.PubkeyListActivity"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 606
    const v7, 0x7f08001f

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 607
    new-instance v7, Lorg/connectbot/PubkeyListActivity$13;

    invoke-direct {v7, p0, v3, v4}, Lorg/connectbot/PubkeyListActivity$13;-><init>(Lorg/connectbot/PubkeyListActivity;[Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v6, v3, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 614
    invoke-virtual {v6, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 593
    .end local v3           #namesList:[Ljava/lang/String;
    :cond_2
    aget-object v0, v8, v6

    .line 594
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 593
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 595
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private readKeyFromFile(Ljava/io/File;)V
    .locals 14
    .parameter "file"

    .prologue
    .line 514
    new-instance v6, Lorg/connectbot/bean/PubkeyBean;

    invoke-direct {v6}, Lorg/connectbot/bean/PubkeyBean;-><init>()V

    .line 517
    .local v6, pubkey:Lorg/connectbot/bean/PubkeyBean;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setNickname(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x2000

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 521
    const v10, 0x7f080020

    .line 522
    const/4 v11, 0x1

    .line 520
    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 522
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 569
    :goto_0
    return-void

    .line 529
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/connectbot/PubkeyListActivity;->readRaw(Ljava/io/File;)[B

    move-result-object v7

    .line 531
    .local v7, raw:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 532
    .local v0, data:Ljava/lang/String;
    const-string v10, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 533
    const-string v10, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v10, v11

    .line 534
    .local v8, start:I
    const-string v10, "-----END PRIVATE KEY-----"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 536
    .local v4, end:I
    if-le v4, v8, :cond_2

    .line 537
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 538
    .local v3, encoded:[C
    const-string v10, "ConnectBot.PubkeyListActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "encoded: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {v3}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v1

    .line 541
    .local v1, decoded:[B
    invoke-static {v1}, Lorg/connectbot/util/PubkeyUtils;->recoverKeyPair([B)Ljava/security/KeyPair;

    move-result-object v5

    .line 543
    .local v5, kp:Ljava/security/KeyPair;
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setType(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setPrivateKey([B)V

    .line 545
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setPublicKey([B)V

    .line 560
    .end local v1           #decoded:[B
    .end local v3           #encoded:[C
    .end local v4           #end:I
    .end local v5           #kp:Ljava/security/KeyPair;
    .end local v8           #start:I
    :goto_1
    iget-object v10, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    if-nez v10, :cond_1

    .line 561
    new-instance v10, Lorg/connectbot/util/PubkeyDatabase;

    invoke-direct {v10, p0}, Lorg/connectbot/util/PubkeyDatabase;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 562
    :cond_1
    iget-object v10, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    invoke-virtual {v10, v6}, Lorg/connectbot/util/PubkeyDatabase;->savePubkey(Lorg/connectbot/bean/PubkeyBean;)Lorg/connectbot/bean/PubkeyBean;

    .line 564
    iget-object v10, p0, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 565
    .end local v0           #data:Ljava/lang/String;
    .end local v7           #raw:[B
    :catch_0
    move-exception v2

    .line 566
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "ConnectBot.PubkeyListActivity"

    const-string v11, "Problem parsing imported private key"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    const v10, 0x7f080020

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 547
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v4       #end:I
    .restart local v7       #raw:[B
    .restart local v8       #start:I
    :cond_2
    :try_start_1
    const-string v10, "ConnectBot.PubkeyListActivity"

    const-string v11, "Problem parsing PKCS#8 file; corrupt?"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const v10, 0x7f080020

    .line 550
    const/4 v11, 0x1

    .line 548
    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 550
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 553
    .end local v4           #end:I
    .end local v8           #start:I
    :cond_3
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-static {v10}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;

    move-result-object v9

    .line 554
    .local v9, struct:Lcom/trilead/ssh2/crypto/PEMStructure;
    invoke-static {v9}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setEncrypted(Z)V

    .line 555
    const-string v10, "IMPORTED"

    invoke-virtual {v6, v10}, Lorg/connectbot/bean/PubkeyBean;->setType(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v6, v7}, Lorg/connectbot/bean/PubkeyBean;->setPrivateKey([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected static readRaw(Ljava/io/File;)[B
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 183
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 187
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 191
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 192
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 193
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 195
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 188
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method protected handleAddKey(Lorg/connectbot/bean/PubkeyBean;)V
    .locals 6
    .parameter "pubkey"

    .prologue
    const/4 v5, 0x0

    .line 243
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000b

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, view:Landroid/view/View;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 247
    .local v0, passwordField:Landroid/widget/EditText;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 249
    const v3, 0x7f080021

    new-instance v4, Lorg/connectbot/PubkeyListActivity$5;

    invoke-direct {v4, p0, p1, v0}, Lorg/connectbot/PubkeyListActivity$5;-><init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 254
    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 258
    .end local v0           #passwordField:Landroid/widget/EditText;
    .end local v1           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0, p1, v5}, Lorg/connectbot/PubkeyListActivity;->handleAddKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleAddKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/String;)V
    .locals 11
    .parameter "pubkey"
    .parameter "password"

    .prologue
    const v8, 0x7f080022

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 261
    const/4 v4, 0x0

    .line 262
    .local v4, trileadKey:Ljava/lang/Object;
    const-string v5, "IMPORTED"

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5, p2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decode([CLjava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 291
    .end local v4           #trileadKey:Ljava/lang/Object;
    :goto_0
    if-nez v4, :cond_1

    .line 299
    :goto_1
    return-void

    .line 266
    .restart local v4       #trileadKey:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, message:Ljava/lang/String;
    const-string v5, "ConnectBot.PubkeyListActivity"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    invoke-static {p0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 274
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 275
    .local v2, privKey:Ljava/security/PrivateKey;
    const/4 v3, 0x0

    .line 277
    .local v3, pubKey:Ljava/security/PublicKey;
    :try_start_1
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v5

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Lorg/connectbot/util/PubkeyUtils;->decodePrivate([BLjava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 278
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 287
    invoke-static {v2, v3}, Lorg/connectbot/util/PubkeyUtils;->convertToTrilead(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object v4

    .line 288
    const-string v5, "ConnectBot.PubkeyListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unlocked key "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/connectbot/util/PubkeyUtils;->formatKey(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1       #message:Ljava/lang/String;
    const-string v5, "ConnectBot.PubkeyListActivity"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    invoke-static {p0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1

    .line 293
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #privKey:Ljava/security/PrivateKey;
    .end local v3           #pubKey:Ljava/security/PublicKey;
    .end local v4           #trileadKey:Ljava/lang/Object;
    :cond_1
    const-string v5, "ConnectBot.PubkeyListActivity"

    const-string v6, "Unlocked key \'%s\'"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v5, p1, v4, v9}, Lorg/connectbot/service/TerminalManager;->addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;Z)V

    .line 298
    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 488
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 490
    packed-switch p1, :pswitch_data_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 492
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 493
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 495
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 496
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v3}, Lorg/connectbot/PubkeyListActivity;->readKeyFromFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ConnectBot.PubkeyListActivity"

    const-string v4, "Couldn\'t read from picked file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 498
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 500
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v3}, Lorg/connectbot/PubkeyListActivity;->readKeyFromFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lorg/connectbot/PubkeyListActivity;->setContentView(I)V

    .line 146
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 148
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 146
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/connectbot/PubkeyListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Lorg/connectbot/util/PubkeyDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/PubkeyDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 153
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->updateList()V

    .line 155
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/connectbot/PubkeyListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 157
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/connectbot/PubkeyListActivity$3;

    invoke-direct {v1, p0}, Lorg/connectbot/PubkeyListActivity$3;-><init>(Lorg/connectbot/PubkeyListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lorg/connectbot/PubkeyListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->clipboard:Landroid/text/ClipboardManager;

    .line 175
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->inflater:Landroid/view/LayoutInflater;

    .line 176
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 304
    move-object v5, p3

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 305
    .local v5, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lorg/connectbot/PubkeyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iget v10, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/connectbot/bean/PubkeyBean;

    .line 307
    .local v8, pubkey:Lorg/connectbot/bean/PubkeyBean;
    invoke-virtual {v8}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 313
    const-string v9, "IMPORTED"

    invoke-virtual {v8}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 314
    .local v4, imported:Z
    iget-object v9, p0, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v8}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/connectbot/service/TerminalManager;->isKeyLoaded(Ljava/lang/String;)Z

    move-result v7

    .line 316
    .local v7, loaded:Z
    if-eqz v7, :cond_0

    const v9, 0x7f080024

    :goto_0
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 317
    .local v6, load:Landroid/view/MenuItem;
    new-instance v9, Lorg/connectbot/PubkeyListActivity$6;

    invoke-direct {v9, p0, v7, v8}, Lorg/connectbot/PubkeyListActivity$6;-><init>(Lorg/connectbot/PubkeyListActivity;ZLorg/connectbot/bean/PubkeyBean;)V

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 330
    const v9, 0x7f080025

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lorg/connectbot/PubkeyListActivity;->onstartToggle:Landroid/view/MenuItem;

    .line 331
    iget-object v10, p0, Lorg/connectbot/PubkeyListActivity;->onstartToggle:Landroid/view/MenuItem;

    invoke-virtual {v8}, Lorg/connectbot/bean/PubkeyBean;->isEncrypted()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 332
    iget-object v9, p0, Lorg/connectbot/PubkeyListActivity;->onstartToggle:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 333
    iget-object v9, p0, Lorg/connectbot/PubkeyListActivity;->onstartToggle:Landroid/view/MenuItem;

    invoke-virtual {v8}, Lorg/connectbot/bean/PubkeyBean;->isStartup()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 334
    iget-object v9, p0, Lorg/connectbot/PubkeyListActivity;->onstartToggle:Landroid/view/MenuItem;

    new-instance v10, Lorg/connectbot/PubkeyListActivity$7;

    invoke-direct {v10, p0, v8}, Lorg/connectbot/PubkeyListActivity$7;-><init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;)V

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 344
    const v9, 0x7f08001b

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 345
    .local v2, copyPublicToClipboard:Landroid/view/MenuItem;
    if-eqz v4, :cond_2

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 346
    new-instance v9, Lorg/connectbot/PubkeyListActivity$8;

    invoke-direct {v9, p0, v8}, Lorg/connectbot/PubkeyListActivity$8;-><init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;)V

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 360
    const v9, 0x7f08001a

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 361
    .local v1, copyPrivateToClipboard:Landroid/view/MenuItem;
    invoke-virtual {v8}, Lorg/connectbot/bean/PubkeyBean;->isEncrypted()Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v4, :cond_3

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 362
    new-instance v9, Lorg/connectbot/PubkeyListActivity$9;

    invoke-direct {v9, p0, v4, v8}, Lorg/connectbot/PubkeyListActivity$9;-><init>(Lorg/connectbot/PubkeyListActivity;ZLorg/connectbot/bean/PubkeyBean;)V

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 382
    const v9, 0x7f08001e

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 383
    .local v0, changePassword:Landroid/view/MenuItem;
    if-eqz v4, :cond_4

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 384
    new-instance v9, Lorg/connectbot/PubkeyListActivity$10;

    invoke-direct {v9, p0, v8}, Lorg/connectbot/PubkeyListActivity$10;-><init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;)V

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 430
    const v9, 0x7f080026

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lorg/connectbot/PubkeyListActivity;->confirmUse:Landroid/view/MenuItem;

    .line 431
    iget-object v9, p0, Lorg/connectbot/PubkeyListActivity;->confirmUse:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 432
    iget-object v9, p0, Lorg/connectbot/PubkeyListActivity;->confirmUse:Landroid/view/MenuItem;

    invoke-virtual {v8}, Lorg/connectbot/bean/PubkeyBean;->isConfirmUse()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 433
    iget-object v9, p0, Lorg/connectbot/PubkeyListActivity;->confirmUse:Landroid/view/MenuItem;

    new-instance v10, Lorg/connectbot/PubkeyListActivity$11;

    invoke-direct {v10, p0, v8}, Lorg/connectbot/PubkeyListActivity$11;-><init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;)V

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 443
    const v9, 0x7f080015

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 444
    .local v3, delete:Landroid/view/MenuItem;
    new-instance v9, Lorg/connectbot/PubkeyListActivity$12;

    invoke-direct {v9, p0, v8, v7}, Lorg/connectbot/PubkeyListActivity$12;-><init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;Z)V

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 467
    return-void

    .line 316
    .end local v0           #changePassword:Landroid/view/MenuItem;
    .end local v1           #copyPrivateToClipboard:Landroid/view/MenuItem;
    .end local v2           #copyPublicToClipboard:Landroid/view/MenuItem;
    .end local v3           #delete:Landroid/view/MenuItem;
    .end local v6           #load:Landroid/view/MenuItem;
    :cond_0
    const v9, 0x7f080023

    goto/16 :goto_0

    .line 331
    .restart local v6       #load:Landroid/view/MenuItem;
    :cond_1
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 345
    .restart local v2       #copyPublicToClipboard:Landroid/view/MenuItem;
    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 361
    .restart local v1       #copyPrivateToClipboard:Landroid/view/MenuItem;
    :cond_3
    const/4 v9, 0x1

    goto :goto_3

    .line 383
    .restart local v0       #changePassword:Landroid/view/MenuItem;
    :cond_4
    const/4 v9, 0x1

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 203
    const v2, 0x7f080013

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 204
    .local v0, generatekey:Landroid/view/MenuItem;
    const v2, 0x1080042

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/connectbot/GeneratePubkeyActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 207
    const v2, 0x7f080014

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 208
    .local v1, importkey:Landroid/view/MenuItem;
    const v2, 0x1080055

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 209
    new-instance v2, Lorg/connectbot/PubkeyListActivity$4;

    invoke-direct {v2, p0}, Lorg/connectbot/PubkeyListActivity$4;-><init>(Lorg/connectbot/PubkeyListActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 239
    const/4 v2, 0x1

    return v2
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/PubkeyListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 125
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lorg/connectbot/util/PubkeyDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/PubkeyDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 127
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 133
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/connectbot/PubkeyListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/PubkeyDatabase;->close()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 139
    :cond_0
    return-void
.end method

.method protected updateList()V
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    if-nez v1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    invoke-virtual {v1}, Lorg/connectbot/util/PubkeyDatabase;->allPubkeys()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/PubkeyListActivity;->pubkeys:Ljava/util/List;

    .line 481
    new-instance v0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity;->pubkeys:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;-><init>(Lorg/connectbot/PubkeyListActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 483
    .local v0, adapter:Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;
    invoke-virtual {p0, v0}, Lorg/connectbot/PubkeyListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
