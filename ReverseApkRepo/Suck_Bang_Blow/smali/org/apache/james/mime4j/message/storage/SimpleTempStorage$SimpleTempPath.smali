.class Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/storage/TempPath;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTempPath"
.end annotation


# instance fields
.field private path:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;


# direct methods
.method private constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 130
    iput-object p2, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createTempFile()Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    #calls: Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    invoke-static {v0, p0, v1, v1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 1
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    #calls: Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 1
    .parameter "prefix"
    .parameter "suffix"
    .parameter "allowInMemory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    #calls: Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    const/4 v1, 0x0

    #calls: Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath(Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 1
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    #calls: Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    invoke-static {v0, p0, p1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
