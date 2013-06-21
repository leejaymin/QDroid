.class public Lorg/apache/james/mime4j/field/DateTimeField$Parser;
.super Ljava/lang/Object;
.source "DateTimeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/DateTimeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 8
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 53
    const/4 v4, 0x0

    .line 54
    .local v4, date:Ljava/util/Date;
    const/4 v5, 0x0

    .line 57
    .local v5, parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 69
    :goto_0
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeField;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/DateTimeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lorg/apache/james/mime4j/field/datetime/parser/ParseException;)V

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 60
    .local v7, err:Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
    :try_start_1
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .end local v7           #err:Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 64
    .local v6, e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 67
    :cond_0
    move-object v5, v6

    goto :goto_0
.end method
