.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    return-void
.end method

.method private static a(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v1

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v2, "+}\r\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v0

    :cond_1
    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a([BLcom/sun/mail/iap/Protocol;)V
    .locals 1

    array-length v0, p0

    invoke-static {p1, v0}, Lcom/sun/mail/iap/Argument;->a(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .locals 13

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    if-lt v6, v2, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_1
    if-lez v6, :cond_2

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    :cond_2
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/sun/mail/iap/b;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/sun/mail/iap/b;

    iget-object v1, v1, Lcom/sun/mail/iap/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_4
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    instance-of v3, v1, Lcom/sun/mail/iap/a;

    if-eqz v3, :cond_13

    check-cast v1, Lcom/sun/mail/iap/a;

    iget-object v7, v1, Lcom/sun/mail/iap/a;->a:[B

    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    array-length v8, v7

    const/16 v3, 0x400

    if-le v8, v3, :cond_6

    invoke-static {v7, p1}, Lcom/sun/mail/iap/Argument;->a([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    :cond_6
    if-nez v8, :cond_8

    const/4 v3, 0x1

    :goto_3
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v12, v4

    move v4, v3

    move v3, v5

    move v5, v12

    :goto_4
    if-lt v5, v8, :cond_9

    if-eqz v4, :cond_7

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    :cond_7
    if-eqz v3, :cond_12

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v8, :cond_f

    :goto_6
    if-eqz v4, :cond_3

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    aget-byte v9, v7, v5

    if-eqz v9, :cond_a

    const/16 v10, 0xd

    if-eq v9, v10, :cond_a

    const/16 v10, 0xa

    if-eq v9, v10, :cond_a

    and-int/lit16 v10, v9, 0xff

    const/16 v11, 0x7f

    if-le v10, v11, :cond_b

    :cond_a
    invoke-static {v7, p1}, Lcom/sun/mail/iap/Argument;->a([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    :cond_b
    const/16 v10, 0x2a

    if-eq v9, v10, :cond_c

    const/16 v10, 0x25

    if-eq v9, v10, :cond_c

    const/16 v10, 0x28

    if-eq v9, v10, :cond_c

    const/16 v10, 0x29

    if-eq v9, v10, :cond_c

    const/16 v10, 0x7b

    if-eq v9, v10, :cond_c

    const/16 v10, 0x22

    if-eq v9, v10, :cond_c

    const/16 v10, 0x5c

    if-eq v9, v10, :cond_c

    and-int/lit16 v10, v9, 0xff

    const/16 v11, 0x20

    if-gt v10, v11, :cond_e

    :cond_c
    const/4 v4, 0x1

    const/16 v10, 0x22

    if-eq v9, v10, :cond_d

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_e

    :cond_d
    const/4 v3, 0x1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_f
    aget-byte v5, v7, v3

    const/16 v9, 0x22

    if-eq v5, v9, :cond_10

    const/16 v9, 0x5c

    if-ne v5, v9, :cond_11

    :cond_10
    const/16 v9, 0x5c

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->write(I)V

    :cond_11
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    :cond_13
    instance-of v3, v1, [B

    if-eqz v3, :cond_14

    check-cast v1, [B

    invoke-static {v1, p1}, Lcom/sun/mail/iap/Argument;->a([BLcom/sun/mail/iap/Protocol;)V

    goto/16 :goto_2

    :cond_14
    instance-of v3, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_15

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sun/mail/iap/Argument;->a(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_15
    instance-of v3, v1, Lcom/sun/mail/iap/Literal;

    if-eqz v3, :cond_16

    check-cast v1, Lcom/sun/mail/iap/Literal;

    invoke-interface {v1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sun/mail/iap/Argument;->a(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_16
    instance-of v3, v1, Lcom/sun/mail/iap/Argument;

    if-eqz v3, :cond_3

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    check-cast v1, Lcom/sun/mail/iap/Argument;

    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto/16 :goto_2
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeAtom(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/b;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes([B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 2

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 2

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/a;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/a;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/a;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/a;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method
