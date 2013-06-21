.class Lcom/ui/LapseIt/remote/TemplateRequestHandler$1;
.super Ljava/lang/Object;
.source "TemplateRequestHandler.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/remote/TemplateRequestHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/remote/TemplateRequestHandler;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/remote/TemplateRequestHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/remote/TemplateRequestHandler$1;->this$0:Lcom/ui/LapseIt/remote/TemplateRequestHandler;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 28
    .local v0, writer:Ljava/io/OutputStreamWriter;
    const-string v1, "Template Handler"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 30
    return-void
.end method
