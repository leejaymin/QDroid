.class Lorg/mozilla/javascript/regexp/RECompiled;
.super Ljava/lang/Object;
.source "NativeRegExp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x554745732fcce675L


# instance fields
.field anchorCh:I

.field classCount:I

.field classList:[Lorg/mozilla/javascript/regexp/RECharSet;

.field flags:I

.field parenCount:I

.field program:[B

.field source:[C


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2626
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    return-void
.end method
