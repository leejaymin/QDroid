.class final Lcom/sun/mail/imap/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/iap/Literal;


# instance fields
.field private a:Ljavax/mail/Message;

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>(Ljavax/mail/Message;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/y;->b:I

    iput-object p1, p0, Lcom/sun/mail/imap/y;->a:Ljavax/mail/Message;

    new-instance v0, Lcom/sun/mail/imap/x;

    invoke-direct {v0, p2}, Lcom/sun/mail/imap/x;-><init>(I)V

    new-instance v1, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Lcom/sun/mail/imap/x;->a()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/y;->b:I

    invoke-virtual {v0}, Lcom/sun/mail/imap/x;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/y;->c:[B

    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    iget v0, p0, Lcom/sun/mail/imap/y;->b:I

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/y;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/y;->c:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/mail/imap/y;->b:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/sun/mail/imap/y;->a:Ljavax/mail/Message;

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessagingException while appending message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
