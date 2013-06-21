.class Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->doInBackground([Lcom/chillingo/crystal/serverdata/AbstractServerData;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper$1;->this$1:Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
