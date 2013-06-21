.class Lcom/wareone/tappmt/PmtDbAdapter$Exporter;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Exporter"
.end annotation


# static fields
.field private static final CLOSING_WITH_TICK:Ljava/lang/String; = "\'>"

.field private static final END_COL:Ljava/lang/String; = "</col>"

.field private static final END_DB:Ljava/lang/String; = "</export-database>"

.field private static final END_ROW:Ljava/lang/String; = "</row>"

.field private static final END_TABLE:Ljava/lang/String; = "</table>"

.field private static final START_COL:Ljava/lang/String; = "<col name=\'"

.field private static final START_DB:Ljava/lang/String; = "<export-database name=\'"

.field private static final START_ROW:Ljava/lang/String; = "<row>"

.field private static final START_TABLE:Ljava/lang/String; = "<table name=\'"


# instance fields
.field private _bos:Ljava/io/BufferedOutputStream;

.field final synthetic this$0:Lcom/wareone/tappmt/PmtDbAdapter;


# direct methods
.method public constructor <init>(Lcom/wareone/tappmt/PmtDbAdapter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1410
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 1411
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/sdcard/tappmt/export.xml"

    .line 1412
    const/4 v3, 0x1

    .line 1411
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;-><init>(Lcom/wareone/tappmt/PmtDbAdapter;Ljava/io/BufferedOutputStream;)V

    .line 1413
    return-void
.end method

.method public constructor <init>(Lcom/wareone/tappmt/PmtDbAdapter;Ljava/io/BufferedOutputStream;)V
    .locals 0
    .parameter
    .parameter "bos"

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->this$0:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1417
    iput-object p2, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<col name=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</col>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1463
    .local v0, stg:Ljava/lang/String;
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1464
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1426
    :cond_0
    return-void
.end method

.method public endDbExport()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    const-string v1, "</export-database>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1437
    return-void
.end method

.method public endRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    const-string v1, "</row>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1458
    return-void
.end method

.method public endTable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    const-string v1, "</table>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1448
    return-void
.end method

.method public startDbExport(Ljava/lang/String;)V
    .locals 3
    .parameter "dbName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<export-database name=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, stg:Ljava/lang/String;
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1432
    return-void
.end method

.method public startRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    const-string v1, "<row>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1453
    return-void
.end method

.method public startTable(Ljava/lang/String;)V
    .locals 3
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<table name=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, stg:Ljava/lang/String;
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->_bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1443
    return-void
.end method
