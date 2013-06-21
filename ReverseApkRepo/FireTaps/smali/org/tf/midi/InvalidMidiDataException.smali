.class public Lorg/tf/midi/InvalidMidiDataException;
.super Ljava/lang/Exception;
.source "InvalidMidiDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x3cd5b0e7ef46f738L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
