.class public Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;
.super Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;
.source "MaximalBodyDescriptor.java"

# interfaces
.implements Lorg/apache/james/mime4j/descriptor/RFC2045MimeDescriptor;
.implements Lorg/apache/james/mime4j/descriptor/RFC2183ContentDispositionDescriptor;
.implements Lorg/apache/james/mime4j/descriptor/RFC3066ContentLanguageDescriptor;
.implements Lorg/apache/james/mime4j/descriptor/RFC2557ContentLocationDescriptor;
.implements Lorg/apache/james/mime4j/descriptor/RFC1864ContentMD5Descriptor;


# static fields
.field private static final DEFAULT_MAJOR_VERSION:I = 0x1

.field private static final DEFAULT_MINOR_VERSION:I


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionParameters:Ljava/util/Map;

.field private contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionSize:J

.field private contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionType:Ljava/lang/String;

.field private contentId:Ljava/lang/String;

.field private contentLanguage:Ljava/util/List;

.field private contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentLocation:Ljava/lang/String;

.field private contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentMD5Raw:Ljava/lang/String;

.field private isContentDescriptionSet:Z

.field private isContentDispositionSet:Z

.field private isContentIdSet:Z

.field private isContentLanguageSet:Z

.field private isContentLocationSet:Z

.field private isContentMD5Set:Z

.field private isMimeVersionSet:Z

.field private mimeMajorVersion:I

.field private mimeMinorVersion:I

.field private mimeVersionException:Lorg/apache/james/mime4j/MimeException;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 79
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    .line 81
    iput v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I

    .line 82
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    .line 83
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    .line 84
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    .line 85
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    .line 86
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    .line 87
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    .line 88
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 89
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 90
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 91
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 92
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 93
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J

    .line 95
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    .line 96
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    .line 97
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;

    .line 98
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    .line 99
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    .line 100
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    .line 102
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    .line 103
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    .line 104
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    .line 105
    return-void
.end method

.method private parseContentDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    .line 220
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    .line 221
    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseContentDisposition(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    const-string v7, ""

    .line 162
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    .line 163
    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    .line 164
    iget-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v6, ""

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    .line 166
    iget-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v6, "modification-date"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, contentDispositionModificationDate:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v6, "creation-date"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, contentDispositionCreationDate:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 180
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;
    :try_end_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_1
    :goto_1
    iget-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v6, "read-date"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, contentDispositionReadDate:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 190
    :try_start_2
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;
    :try_end_2
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v6, "size"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    .local v4, size:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 199
    :try_start_3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    :cond_3
    :goto_3
    iget-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v6, ""

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void

    .line 171
    .end local v0           #contentDispositionCreationDate:Ljava/lang/String;
    .end local v2           #contentDispositionReadDate:Ljava/lang/String;
    .end local v4           #size:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 172
    .local v3, e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_0

    .line 181
    .end local v3           #e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .restart local v0       #contentDispositionCreationDate:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 182
    .restart local v3       #e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_1

    .line 191
    .end local v3           #e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .restart local v2       #contentDispositionReadDate:Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 192
    .restart local v3       #e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_2

    .line 200
    .end local v3           #e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .restart local v4       #size:Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v3, v5

    .line 201
    .local v3, e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Lorg/apache/james/mime4j/MimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Lorg/apache/james/mime4j/MimeException;

    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_3
.end method

.method private parseContentId(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    .line 229
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    .line 230
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 3
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, stringReader:Ljava/io/StringReader;
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    .line 210
    .local v0, parser:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v1

    .line 211
    .local v1, result:Lorg/apache/james/mime4j/field/datetime/DateTime;
    return-object v1
.end method

.method private parseLanguage(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 150
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLanguageSet:Z

    .line 151
    if-eqz p1, :cond_0

    .line 153
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;-><init>(Ljava/io/Reader;)V

    .line 154
    .local v1, parser:Lorg/apache/james/mime4j/field/language/ContentLanguageParser;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->parse()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1           #parser:Lorg/apache/james/mime4j/field/language/ContentLanguageParser;
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 156
    .local v0, e:Lorg/apache/james/mime4j/MimeException;
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_0
.end method

.method private parseLocation(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 136
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    .line 137
    if-eqz p1, :cond_0

    .line 138
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, stringReader:Ljava/io/StringReader;
    new-instance v1, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;-><init>(Ljava/io/Reader;)V

    .line 140
    .local v1, parser:Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->setFoldingPreserved(Z)V

    .line 142
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->parse()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #parser:Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;
    .end local v2           #stringReader:Ljava/io/StringReader;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local v1       #parser:Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;
    .restart local v2       #stringReader:Ljava/io/StringReader;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 144
    .local v0, e:Lorg/apache/james/mime4j/MimeException;
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_0
.end method

.method private parseMD5(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    .line 133
    :cond_0
    return-void
.end method

.method private parseMimeVersion(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    .line 233
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 234
    .local v4, reader:Ljava/io/StringReader;
    new-instance v3, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;-><init>(Ljava/io/Reader;)V

    .line 236
    .local v3, parser:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->parse()V

    .line 237
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->getMajorVersion()I

    move-result v1

    .line 238
    .local v1, major:I
    if-eq v1, v5, :cond_0

    .line 239
    iput v1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    .line 241
    :cond_0
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->getMinorVersion()I

    move-result v2

    .line 242
    .local v2, minor:I
    if-eq v2, v5, :cond_1

    .line 243
    iput v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1           #major:I
    .end local v2           #minor:I
    :cond_1
    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    .line 249
    return-void

    .line 245
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 246
    .local v0, e:Lorg/apache/james/mime4j/MimeException;
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeVersionException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_0
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 109
    const-string v0, "mime-version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseMimeVersion(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "content-id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    if-nez v0, :cond_1

    .line 112
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentId(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "content-description"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    if-nez v0, :cond_2

    .line 114
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "content-disposition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    if-nez v0, :cond_3

    .line 116
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentDisposition(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    const-string v0, "content-language"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLanguageSet:Z

    if-nez v0, :cond_4

    .line 118
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    const-string v0, "content-location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    if-nez v0, :cond_5

    .line 120
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_5
    const-string v0, "content-md5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    if-nez v0, :cond_6

    .line 122
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseMD5(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDispositionCreationDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionCreationDateParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentDispositionModificationDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionModificationDateParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionParameters()Ljava/util/Map;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getContentDispositionReadDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionReadDateParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionSize()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J

    return-wide v0
.end method

.method public getContentDispositionSizeParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/util/List;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;

    return-object v0
.end method

.method public getContentLanguageParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLocationParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentMD5Raw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeMajorVersion()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    return v0
.end method

.method public getMimeMinorVersion()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I

    return v0
.end method

.method public getMimeVersionParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeVersionException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method
