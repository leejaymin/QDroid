.class Lorg/jaxen/dom/DocumentNavigator$6;
.super Lorg/jaxen/dom/DocumentNavigator$NodeIterator;
.source "DocumentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jaxen/dom/DocumentNavigator;->getFollowingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jaxen/dom/DocumentNavigator;


# direct methods
.method constructor <init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 273
    iput-object p1, p0, Lorg/jaxen/dom/DocumentNavigator$6;->this$0:Lorg/jaxen/dom/DocumentNavigator;

    invoke-direct {p0, p1, p2}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method protected getFirstNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 285
    :goto_0
    return-object v1

    .line 280
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 281
    .local v0, sibling:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 282
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jaxen/dom/DocumentNavigator$6;->getFirstNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 285
    goto :goto_0
.end method

.method protected getNextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 297
    :goto_0
    return-object v1

    .line 294
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 295
    .local v0, n:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 296
    :cond_1
    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jaxen/dom/DocumentNavigator$6;->getFirstNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 297
    goto :goto_0
.end method
