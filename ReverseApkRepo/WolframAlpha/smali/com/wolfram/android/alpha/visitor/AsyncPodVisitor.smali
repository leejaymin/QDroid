.class public Lcom/wolfram/android/alpha/visitor/AsyncPodVisitor;
.super Ljava/lang/Object;
.source "AsyncPodVisitor.java"

# interfaces
.implements Lcom/wolfram/alpha/visitor/Visitor;


# instance fields
.field private http:Lcom/wolfram/alpha/net/HttpProvider;


# direct methods
.method public constructor <init>(Lcom/wolfram/alpha/net/HttpProvider;)V
    .locals 0
    .parameter "http"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/wolfram/android/alpha/visitor/AsyncPodVisitor;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 41
    return-void
.end method


# virtual methods
.method public visit(Lcom/wolfram/alpha/WAAssumption;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 68
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAExamplePage;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 96
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAFutureTopic;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 94
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAImage;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 86
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAImageMap;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 88
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAInfo;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 72
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WALink;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 98
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAMathematicaInput;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 84
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAPlainText;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 82
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAPod;)V
    .locals 1
    .parameter "pod"

    .prologue
    .line 47
    invoke-interface {p1}, Lcom/wolfram/alpha/WAPod;->getAsyncURL()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, asyncURL:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    :cond_0
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAPodState;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 78
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 64
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAReinterpretWarning;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 100
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WARelatedExample;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 76
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WARelatedLink;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 74
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WASound;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 90
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WASourceInfo;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 92
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WASubpod;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 66
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WASubpodState;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 80
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAUnits;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 102
    return-void
.end method

.method public visit(Lcom/wolfram/alpha/WAWarning;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 70
    return-void
.end method
