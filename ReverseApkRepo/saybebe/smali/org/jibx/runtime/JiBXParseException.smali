.class public Lorg/jibx/runtime/JiBXParseException;
.super Lorg/jibx/runtime/JiBXException;
.source "JiBXParseException.java"


# instance fields
.field private m_namespace:Ljava/lang/String;

.field private m_tagName:Ljava/lang/String;

.field private m_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "msg"
    .parameter "value"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "value"
    .parameter "namespace"
    .parameter "tagName"
    .parameter "root"

    .prologue
    .line 75
    invoke-direct {p0, p1, p5}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    iput-object p2, p0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lorg/jibx/runtime/JiBXParseException;->m_tagName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "value"
    .parameter "root"

    .prologue
    .line 61
    invoke-direct {p0, p1, p3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    iput-object p2, p0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 117
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 118
    check-cast v0, Lorg/jibx/runtime/JiBXParseException;

    .line 119
    .local v0, other:Lorg/jibx/runtime/JiBXParseException;
    iget-object v3, p0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 120
    iget-object v3, v0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object v3, p0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    iget-object v4, v0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 123
    goto :goto_0

    .line 124
    :cond_5
    iget-object v3, p0, Lorg/jibx/runtime/JiBXParseException;->m_tagName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 125
    iget-object v3, v0, Lorg/jibx/runtime/JiBXParseException;->m_tagName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 126
    goto :goto_0

    .line 127
    :cond_6
    iget-object v3, p0, Lorg/jibx/runtime/JiBXParseException;->m_tagName:Ljava/lang/String;

    iget-object v4, v0, Lorg/jibx/runtime/JiBXParseException;->m_tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 128
    goto :goto_0

    .line 129
    :cond_7
    iget-object v3, p0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 130
    iget-object v3, v0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 131
    goto :goto_0

    .line 132
    :cond_8
    iget-object v3, p0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    iget-object v4, v0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 133
    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", caused by value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/JiBXParseException;->m_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' for tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/JiBXParseException;->m_tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .parameter "namespace"

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jibx/runtime/JiBXParseException;->m_namespace:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .parameter "tagName"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/jibx/runtime/JiBXParseException;->m_tagName:Ljava/lang/String;

    .line 95
    return-void
.end method
