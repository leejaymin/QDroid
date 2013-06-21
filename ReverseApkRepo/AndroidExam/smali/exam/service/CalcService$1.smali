.class Lexam/service/CalcService$1;
.super Lexam/service/ICalc$Stub;
.source "CalcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/CalcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/CalcService;


# direct methods
.method constructor <init>(Lexam/service/CalcService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/CalcService$1;->this$0:Lexam/service/CalcService;

    .line 23
    invoke-direct {p0}, Lexam/service/ICalc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLCM(II)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    .line 27
    .local v0, i:I
    :goto_0
    rem-int v1, v0, p1

    if-nez v1, :cond_0

    rem-int v1, v0, p2

    if-nez v1, :cond_0

    .line 29
    return v0

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isPrime(I)Z
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 37
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 35
    :cond_0
    rem-int v1, p1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
