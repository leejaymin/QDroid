.class Lcom/ui/LapseIt/remote/DirectoryRequestHandler$1;
.super Ljava/lang/Object;
.source "DirectoryRequestHandler.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/remote/DirectoryRequestHandler;->getEntityFromUri(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/remote/DirectoryRequestHandler;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/remote/DirectoryRequestHandler;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/remote/DirectoryRequestHandler$1;->this$0:Lcom/ui/LapseIt/remote/DirectoryRequestHandler;

    iput-object p2, p0, Lcom/ui/LapseIt/remote/DirectoryRequestHandler$1;->val$file:Ljava/io/File;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 63
    .local v1, writer:Ljava/io/OutputStreamWriter;
    iget-object v2, p0, Lcom/ui/LapseIt/remote/DirectoryRequestHandler$1;->this$0:Lcom/ui/LapseIt/remote/DirectoryRequestHandler;

    iget-object v3, p0, Lcom/ui/LapseIt/remote/DirectoryRequestHandler$1;->val$file:Ljava/io/File;

    #calls: Lcom/ui/LapseIt/remote/DirectoryRequestHandler;->getDirListingHTML(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/ui/LapseIt/remote/DirectoryRequestHandler;->access$0(Lcom/ui/LapseIt/remote/DirectoryRequestHandler;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, resp:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 66
    return-void
.end method
