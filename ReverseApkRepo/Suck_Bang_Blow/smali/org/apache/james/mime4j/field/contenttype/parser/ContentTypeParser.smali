.class public Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
.super Ljava/lang/Object;
.source "ContentTypeParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

.field private jj_ntk:I

.field private paramNames:Ljava/util/ArrayList;

.field private paramValues:Ljava/util/ArrayList;

.field private subtype:Ljava/lang/String;

.field public token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 128
    invoke-static {}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0()V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    .line 125
    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    .line 230
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    .line 232
    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 138
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 140
    new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 141
    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 142
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 143
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 144
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .parameter "stream"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    .line 125
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    .line 230
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    .line 232
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 159
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 160
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 161
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 162
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;)V
    .locals 4
    .parameter "tm"

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    .line 125
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    .line 230
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    .line 232
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 177
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 178
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 179
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 3
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .local v0, oldToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 196
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 197
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 198
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 199
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    return-object v1

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_0

    .line 201
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 202
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 203
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->generateParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I

    .line 132
    return-void

    .line 131
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x38t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 227
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v0, parser:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v0           #parser:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 42
    .local v1, x:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 150
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 152
    new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 153
    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 154
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 155
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 156
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 168
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 169
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 170
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 171
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 185
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 186
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 187
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 188
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x18

    const/4 v6, 0x1

    .line 235
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 236
    new-array v3, v7, [Z

    .line 237
    .local v3, la1tokens:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 238
    aput-boolean v8, v3, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 241
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 242
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I

    .line 244
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_4

    .line 245
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    if-ne v4, v5, :cond_3

    .line 246
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 247
    sget-object v4, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 248
    aput-boolean v6, v3, v2

    .line 246
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 244
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_6

    .line 254
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_5

    .line 255
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    .line 256
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    aput v1, v4, v8

    .line 257
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 253
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 260
    :cond_6
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 261
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 262
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 264
    :cond_7
    new-instance v4, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 209
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    .line 210
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    .line 211
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_0
.end method

.method public getParamNames()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParamValues()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 215
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 216
    .local v1, t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .local v2, t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 217
    iget-object v3, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 216
    .end local v2           #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v1       #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v2       #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_0

    .line 218
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .end local v2           #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v1       #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_1

    .line 220
    .end local v1           #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v2       #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_1
    return-object v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final parameter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    const/16 v2, 0x15

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 93
    .local v0, attrib:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 94
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, val:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public final parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x15

    .line 69
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    .line 70
    .local v1, type:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 71
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 72
    .local v0, subtype:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    iget-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;

    .line 73
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;

    .line 76
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v2

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 81
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v4, v2, v3

    .line 87
    return-void

    .line 76
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_1

    .line 84
    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 85
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parameter()V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parse()V

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 64
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parse()V

    .line 50
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v2, v0, v1

    .line 58
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 59
    return-void

    .line 50
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_0

    .line 52
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_1

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final value()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 101
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 112
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I

    const/4 v2, 0x2

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I

    aput v3, v1, v2

    .line 113
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 114
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>()V

    throw v1

    .line 101
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I

    goto :goto_0

    .line 103
    :pswitch_0
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 116
    .local v0, t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :goto_1
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    return-object v1

    .line 106
    .end local v0           #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :pswitch_1
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 107
    .restart local v0       #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_1

    .line 109
    .end local v0           #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    :pswitch_2
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 110
    .restart local v0       #t:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method