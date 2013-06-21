.class public Lorg/jibx/runtime/JiBXException;
.super Ljava/lang/Exception;
.source "JiBXException.java"


# instance fields
.field private m_rootCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "root"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lorg/jibx/runtime/JiBXException;->m_rootCause:Ljava/lang/Throwable;

    .line 63
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jibx/runtime/JiBXException;->m_rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/JiBXException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 90
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jibx/runtime/JiBXException;->m_rootCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/jibx/runtime/JiBXException;->m_rootCause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 104
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 115
    iget-object v0, p0, Lorg/jibx/runtime/JiBXException;->m_rootCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/jibx/runtime/JiBXException;->m_rootCause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 120
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method
