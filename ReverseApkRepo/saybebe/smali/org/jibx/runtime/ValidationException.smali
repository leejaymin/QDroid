.class public Lorg/jibx/runtime/ValidationException;
.super Lorg/jibx/runtime/RecoverableException;
.source "ValidationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/jibx/runtime/RecoverableException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "obj"

    .prologue
    .line 70
    invoke-static {p1, p2}, Lorg/jibx/runtime/ValidationException;->addDescription(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jibx/runtime/RecoverableException;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/jibx/runtime/IUnmarshallingContext;)V
    .locals 1
    .parameter "msg"
    .parameter "obj"
    .parameter "ctx"

    .prologue
    .line 95
    invoke-static {p1, p2}, Lorg/jibx/runtime/ValidationException;->addDescription(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jibx/runtime/RecoverableException;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "root"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/RecoverableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "root"
    .parameter "obj"

    .prologue
    .line 82
    invoke-static {p1, p3}, Lorg/jibx/runtime/ValidationException;->addDescription(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jibx/runtime/RecoverableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public static addDescription(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "obj"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lorg/jibx/runtime/ValidationException;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static describe(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 109
    instance-of v2, p0, Lorg/jibx/runtime/ITrackSource;

    if-eqz v2, :cond_2

    move-object v1, p0

    .line 110
    check-cast v1, Lorg/jibx/runtime/ITrackSource;

    .line 111
    .local v1, track:Lorg/jibx/runtime/ITrackSource;
    invoke-interface {v1}, Lorg/jibx/runtime/ITrackSource;->jibx_getColumnNumber()I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/jibx/runtime/ITrackSource;->jibx_getLineNumber()I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/jibx/runtime/ITrackSource;->jibx_getDocumentName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, text:Ljava/lang/StringBuffer;
    const-string v2, "(line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-interface {v1}, Lorg/jibx/runtime/ITrackSource;->jibx_getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 115
    const-string v2, ", col "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-interface {v1}, Lorg/jibx/runtime/ITrackSource;->jibx_getColumnNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    invoke-interface {v1}, Lorg/jibx/runtime/ITrackSource;->jibx_getDocumentName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    const-string v2, ", in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-interface {v1}, Lorg/jibx/runtime/ITrackSource;->jibx_getDocumentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .end local v0           #text:Ljava/lang/StringBuffer;
    .end local v1           #track:Lorg/jibx/runtime/ITrackSource;
    :goto_0
    return-object v2

    :cond_2
    const-string v2, "(source unknown)"

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lorg/jibx/runtime/RecoverableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
