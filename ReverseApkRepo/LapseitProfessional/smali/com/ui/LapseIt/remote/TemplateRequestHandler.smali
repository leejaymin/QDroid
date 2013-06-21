.class public Lcom/ui/LapseIt/remote/TemplateRequestHandler;
.super Ljava/lang/Object;
.source "TemplateRequestHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# static fields
.field private static INSTANCE:Lcom/ui/LapseIt/remote/TemplateRequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/ui/LapseIt/remote/TemplateRequestHandler;

    invoke-direct {v0}, Lcom/ui/LapseIt/remote/TemplateRequestHandler;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/remote/TemplateRequestHandler;->INSTANCE:Lcom/ui/LapseIt/remote/TemplateRequestHandler;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ui/LapseIt/remote/TemplateRequestHandler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ui/LapseIt/remote/TemplateRequestHandler;->INSTANCE:Lcom/ui/LapseIt/remote/TemplateRequestHandler;

    return-object v0
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .parameter "request"
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "text/html"

    .line 25
    .local v0, contentType:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/entity/EntityTemplate;

    new-instance v2, Lcom/ui/LapseIt/remote/TemplateRequestHandler$1;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/remote/TemplateRequestHandler$1;-><init>(Lcom/ui/LapseIt/remote/TemplateRequestHandler;)V

    invoke-direct {v1, v2}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .local v1, entity:Lorg/apache/http/HttpEntity;
    move-object v2, v1

    .line 32
    check-cast v2, Lorg/apache/http/entity/EntityTemplate;

    invoke-virtual {v2, v0}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 34
    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 35
    return-void
.end method
