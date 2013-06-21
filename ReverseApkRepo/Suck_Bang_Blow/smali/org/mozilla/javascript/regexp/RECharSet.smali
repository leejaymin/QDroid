.class final Lorg/mozilla/javascript/regexp/RECharSet;
.super Ljava/lang/Object;
.source "NativeRegExp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x6e135f24919b1c1aL


# instance fields
.field volatile transient bits:[B

.field volatile transient converted:Z

.field length:I

.field volatile transient sense:Z

.field startIndex:I

.field strlength:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .parameter "length"
    .parameter "startIndex"
    .parameter "strlength"

    .prologue
    .line 2788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2789
    iput p1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 2790
    iput p2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->startIndex:I

    .line 2791
    iput p3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->strlength:I

    .line 2792
    return-void
.end method
