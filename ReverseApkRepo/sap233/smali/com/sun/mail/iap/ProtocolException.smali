.class public Lcom/sun/mail/iap/ProtocolException;
.super Ljava/lang/Exception;


# instance fields
.field protected transient response:Lcom/sun/mail/iap/Response;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    iput-object p1, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/sun/mail/iap/Response;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    return-object v0
.end method
