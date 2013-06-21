.class public Lcom/chillingo/crystal/form/FormModelHeap;
.super Ljava/lang/Object;


# static fields
.field private static _heap:Lcom/chillingo/crystal/form/FormModelHeap;


# instance fields
.field private _elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/form/FormModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/form/FormModelHeap;->_heap:Lcom/chillingo/crystal/form/FormModelHeap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/form/FormModelHeap;->_elements:Ljava/util/Map;

    return-void
.end method

.method public static instance()Lcom/chillingo/crystal/form/FormModelHeap;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/form/FormModelHeap;->_heap:Lcom/chillingo/crystal/form/FormModelHeap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chillingo/crystal/form/FormModelHeap;

    invoke-direct {v0}, Lcom/chillingo/crystal/form/FormModelHeap;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/form/FormModelHeap;->_heap:Lcom/chillingo/crystal/form/FormModelHeap;

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/form/FormModelHeap;->_heap:Lcom/chillingo/crystal/form/FormModelHeap;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/chillingo/crystal/form/FormModel;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModelHeap;->_elements:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/chillingo/crystal/form/FormModel;->formUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModelHeap;->_elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/chillingo/crystal/form/FormModel;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModelHeap;->_elements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/form/FormModel;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/chillingo/crystal/form/FormModel;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/form/FormModelHeap;->_elements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/form/FormModel;

    return-object v0
.end method
