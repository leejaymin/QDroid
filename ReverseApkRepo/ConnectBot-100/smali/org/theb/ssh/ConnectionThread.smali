.class public abstract Lorg/theb/ssh/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# direct methods
.method public constructor <init>(Lorg/theb/ssh/FeedbackUI;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "ui"
    .parameter "hostname"
    .parameter "username"
    .parameter "port"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getReader()Ljava/io/InputStream;
.end method

.method public abstract getWriter()Ljava/io/OutputStream;
.end method

.method public abstract setPassword(Ljava/lang/String;)V
.end method
