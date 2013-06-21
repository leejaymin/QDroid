.class public Lcom/feelingk/lguiab/manager/gui/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# instance fields
.field private mData:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "_regDate"
    .parameter "_endDate"
    .parameter "_productName"
    .parameter "_price"
    .parameter "_productKind"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 12
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 13
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 14
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 15
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p5, v0, v1

    .line 16
    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ListItem;->mData:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method
