.class public Lcom/sun/mail/iap/LiteralException;
.super Lcom/sun/mail/iap/ProtocolException;


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/mail/iap/LiteralException;->response:Lcom/sun/mail/iap/Response;

    return-void
.end method
